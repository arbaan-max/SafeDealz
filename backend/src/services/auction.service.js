import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { createOutboxEvent } from '../repositories/outbox-event.repository.js';
import { countRoundsForDevice, createAuctionRound, findAuctionById, findLiveRoundForDevice, listAuctions, listExpiredAcceptanceRounds, listExpiredLiveRounds, saveAuctionRound, claimAcceptance } from '../repositories/auction.repository.js';
import { getOrCreateSettings, saveSettings } from '../repositories/platform-settings.repository.js';
import { findBidById, findBidByKey, findVendorBid, listBidsForVendor, listBidsForRound, createBid, saveBid } from '../repositories/bid.repository.js';
import { findDeviceById, saveDevice } from '../repositories/device.repository.js';
import { findAccountById, listAccounts } from '../repositories/account.repository.js';
import { createDeal, findDealById, findDealByRound, findDealByDevice, listDeals, saveDeal, createPaymentInstruction, findPaymentByDeal, savePaymentInstruction } from '../repositories/deal.repository.js';
import { findBranchById } from '../repositories/branch.repository.js';
import { listAssignments } from '../repositories/store-assignment.repository.js';
import { notifyPickup } from './notification.service.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { addMinutes, now } from '../utils/clock.js';
import { platformFee } from '../utils/auction-fee.js';
import { assertBranchInScope, loadScope } from './scope.service.js';
import { releaseReservation, reserveFunds, commitReservation } from './wallet.service.js';
import { startPayout, presentPayment } from './payout.service.js';
import { maskAccountNumber } from '../utils/presenters.js';
import { ramOptions, storageOptions } from './inspection-catalog.js';

export const publicBid = (bid) => ({
  id: String(bid.id),
  roundId: String(bid.roundId),
  deviceId: String(bid.deviceId),
  vendorAccountId: String(bid.vendorAccountId),
  amountPaise: bid.amountPaise,
  feePaise: bid.feePaise,
  feeRate: bid.feeRate,
  totalPaise: bid.totalPaise,
  basePaise: bid.basePaise || 0,
  cosmeticDeductionPaise: bid.cosmeticDeductionPaise || 0,
  batteryDeductionPaise: bid.batteryDeductionPaise || 0,
  status: bid.status,
  createdAt: bid.createdAt,
});

const presentAuction = (round, actor, extras = {}) => {
  const payload = publicAuction(round, extras);
  if (actor.role === 'vendor') {
    payload.highestAmountPaise = undefined;
    payload.winnerVendorAccountId = undefined;
    payload.winnerBid = undefined;
    payload.winnerVendor = undefined;
  }
  return payload;
};

const DECLINE_REASONS = {
  customer_declined: 'Customer does not want to do the transaction',
  price_unsatisfied: 'Customer is not satisfied with the price',
  data_backup: 'Customer data backup issue',
  other: 'Others',
};

const requireManagerRound = async (actor, id) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can decide this offer.');
  }
  const round = await findAuctionById(requireObjectId(id, 'auction id'));
  if (!round) throw new ApiError(404, 'NOT_FOUND', 'Auction was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, round.branchId);
  return round;
};

const setDeviceStatus = async (deviceId, status) => {
  const device = await findDeviceById(deviceId);
  if (!device) return null;
  device.status = status;
  await saveDevice(device);
  return device;
};

const releaseAllOpenHolds = async (round, actorId) => {
  const bids = await listBidsForRound(round.id);
  for (const bid of bids) {
    if (bid.status === 'committed') continue;
    await releaseReservation({ idempotencyKey: bid.reservationIdempotencyKey, actorId });
    if (bid.status !== 'lost' && bid.status !== 'released') {
      bid.status = 'released';
      await saveBid(bid);
    }
  }
};

const attachWinnerExtras = async (round, extras) => {
  if (!round.winnerBidId) return extras;
  const winner = await findBidById(round.winnerBidId);
  if (!winner) return extras;
  extras.winnerBid = publicBid(winner);
  const vendor = await findAccountById(winner.vendorAccountId);
  extras.winnerVendor = vendor
    ? { id: String(vendor.id), displayName: vendor.displayName, email: vendor.email }
    : null;
  return extras;
};

export const publicSettings = (settings) => ({
  biddingMinutes: settings.biddingMinutes,
  acceptanceMinutes: settings.acceptanceMinutes,
});

export const publicAuction = (round, extras = {}) => ({
  id: String(round.id),
  deviceId: String(round.deviceId),
  branchId: String(round.branchId),
  roundNumber: round.roundNumber,
  status: round.status,
  opensAt: round.opensAt,
  closesAt: round.closesAt,
  acceptanceDeadlineAt: round.acceptanceDeadlineAt || null,
  biddingMinutes: round.biddingMinutes,
  acceptanceMinutes: round.acceptanceMinutes,
  bidCount: round.bidCount,
  highestAmountPaise: round.highestAmountPaise,
  winnerVendorAccountId: round.winnerVendorAccountId ? String(round.winnerVendorAccountId) : null,
  cancelReason: round.cancelReason || '',
  declineReason: round.declineReason || '',
  expectedAmountPaise: round.expectedAmountPaise || 0,
  ...extras,
});

const requireDevice = async (actor, deviceId) => {
  const scope = await loadScope(actor);
  const device = await findDeviceById(requireObjectId(deviceId, 'device id'));
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  assertBranchInScope(scope, device.branchId);
  return device;
};

export const readSettings = async () => publicSettings(await getOrCreateSettings());

export const updateSettings = async (actor, body) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can change auction timers.');
  const biddingMinutes = Number.parseInt(body.biddingMinutes, 10);
  const acceptanceMinutes = Number.parseInt(body.acceptanceMinutes, 10);
  if (!Number.isInteger(biddingMinutes) || biddingMinutes < 1 || biddingMinutes > 30) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Bidding duration must be 1 to 30 minutes.');
  }
  if (!Number.isInteger(acceptanceMinutes) || acceptanceMinutes < 1 || acceptanceMinutes > 60) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Acceptance duration must be 1 to 60 minutes.');
  }
  const settings = await getOrCreateSettings();
  settings.biddingMinutes = biddingMinutes;
  settings.acceptanceMinutes = acceptanceMinutes;
  await saveSettings(settings);
  await createAuditEvent({
    actorId: actor.id, actorRole: actor.role, action: 'settings.updated', entityType: 'settings', entityId: 'platform',
    metadata: { biddingMinutes, acceptanceMinutes },
  });
  return publicSettings(settings);
};

export const startAuction = async (actor, deviceId) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can start an auction.');
  }
  const device = await requireDevice(actor, deviceId);
  if (!['ready_for_auction', 'needs_reauction'].includes(device.status)) {
    throw new ApiError(409, 'CONFLICT', 'This device is not ready to start an auction.');
  }
  const live = await findLiveRoundForDevice(device.id);
  if (live) throw new ApiError(409, 'DUPLICATE_AUCTION', 'An auction is already live for this device.');
  const vendors = await listAssignments({ branchId: device.branchId, kind: 'vendor', active: true });
  if (!vendors.length) throw new ApiError(409, 'NO_VENDORS', 'Assign at least one vendor before starting an auction.');
  const settings = await getOrCreateSettings();
  const opensAt = now();
  const closesAt = addMinutes(opensAt, settings.biddingMinutes);
  const roundNumber = (await countRoundsForDevice(device.id)) + 1;
  const round = await createAuctionRound({
    deviceId: device.id,
    branchId: device.branchId,
    roundNumber,
    status: 'live',
    opensAt,
    closesAt,
    biddingMinutes: settings.biddingMinutes,
    acceptanceMinutes: settings.acceptanceMinutes,
  });
  device.status = 'live';
  await saveDevice(device);
  await createOutboxEvent({
    topic: 'auction.started',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-started:${round.id}`,
    payload: { auctionId: String(round.id), deviceId: String(device.id), closesAt },
  });
  await createAuditEvent({
    actorId: actor.id, actorRole: actor.role, action: 'auction.started', entityType: 'auction_round', entityId: String(round.id),
    storeId: device.branchId, metadata: { roundNumber, biddingMinutes: settings.biddingMinutes },
  });
  return publicAuction(round);
};

export const readAuction = async (actor, id) => {
  const round = await findAuctionById(requireObjectId(id, 'auction id'));
  if (!round) throw new ApiError(404, 'NOT_FOUND', 'Auction was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, round.branchId);
  if (actor.role === 'vendor') {
    const links = await listAssignments({ accountId: actor.id, kind: 'vendor', active: true, branchId: round.branchId });
    if (!links.length) throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This auction is outside your assigned stores.');
  }
  const device = await findDeviceById(round.deviceId);
  const branch = await findBranchById(round.branchId);
  const extras = {
    device: device ? { id: String(device.id), model: device.model, storage: device.storage, platform: device.platform, status: device.status, imei1: device.imei1, imei2: device.imei2, batteryHealth: device.batteryHealth, ram: device.ram } : null,
    branch: branch ? { id: String(branch.id), name: branch.name, code: branch.code } : null,
  };
  if (actor.role === 'vendor') {
    const own = await findVendorBid(round.id, actor.id);
    if (own) extras.ownBid = publicBid(own);
  } else {
    await attachWinnerExtras(round, extras);
  }
  return presentAuction(round, actor, extras);
};

export const listVisibleAuctions = async (actor, query = {}) => {
  const scope = await loadScope(actor);
  const filter = {};
  if (query.deviceId) filter.deviceId = requireObjectId(query.deviceId, 'device id');
  if (query.status) filter.status = query.status;
  if (actor.role === 'vendor') {
    filter.branchId = { $in: scope.branchIds };
    filter.status = query.status || 'live';
  } else if (!scope.all) {
    filter.branchId = { $in: scope.branchIds };
  }
  return Promise.all((await listAuctions(filter)).map(async (round) => {
    const [device, branch] = await Promise.all([findDeviceById(round.deviceId), findBranchById(round.branchId)]);
    return presentAuction(round, actor, {
      device: device ? { id: String(device.id), model: device.model, storage: device.storage, platform: device.platform, status: device.status } : null,
      branch: branch ? { id: String(branch.id), name: branch.name, code: branch.code } : null,
    });
  }));
};

export const cancelAuction = async (actor, id, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can cancel an auction.');
  }
  const round = await findAuctionById(requireObjectId(id, 'auction id'));
  if (!round) throw new ApiError(404, 'NOT_FOUND', 'Auction was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, round.branchId);
  if (round.status !== 'live') throw new ApiError(409, 'CONFLICT', 'Only a live auction can be cancelled.');
  const reason = String(body?.reason || '').trim();
  if (!reason) throw new ApiError(400, 'VALIDATION_ERROR', 'A cancel reason is required.');
  round.status = 'cancelled';
  round.cancelReason = reason;
  await saveAuctionRound(round);
  await releaseAllOpenHolds(round, actor.id);
  await setDeviceStatus(round.deviceId, 'needs_reauction');
  await createOutboxEvent({
    topic: 'auction.cancelled',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-cancelled:${round.id}`,
    payload: { auctionId: String(round.id), reason },
  });
  return publicAuction(round);
};

const closeLiveRound = async (round) => {
  if (round.status !== 'live') return round;
  const bids = await listBidsForRound(round.id);
  if (!bids.length) {
    round.status = 'needs_reauction';
    round.declineReason = 'No bids received';
    await saveAuctionRound(round);
    await setDeviceStatus(round.deviceId, 'needs_reauction');
    await createOutboxEvent({
      topic: 'auction.closed',
      aggregateType: 'auction_round',
      aggregateId: String(round.id),
      idempotencyKey: `auction-closed:${round.id}`,
      payload: { auctionId: String(round.id), bidCount: 0, outcome: 'no_bids' },
    });
    return round;
  }
  const winner = bids[0];
  winner.status = 'won';
  await saveBid(winner);
  for (const bid of bids.slice(1)) {
    bid.status = 'lost';
    await saveBid(bid);
    await releaseReservation({ idempotencyKey: bid.reservationIdempotencyKey });
  }
  round.status = 'awaiting_acceptance';
  round.winnerBidId = winner.id;
  round.winnerVendorAccountId = winner.vendorAccountId;
  round.highestAmountPaise = winner.amountPaise;
  round.acceptanceDeadlineAt = addMinutes(now(), round.acceptanceMinutes);
  await saveAuctionRound(round);
  await setDeviceStatus(round.deviceId, 'awaiting_acceptance');
  await createOutboxEvent({
    topic: 'auction.closed',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-closed:${round.id}`,
    payload: { auctionId: String(round.id), bidCount: bids.length, winnerBidId: String(winner.id) },
  });
  await createOutboxEvent({
    topic: 'auction.offer_ready',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-offer:${round.id}`,
    payload: { auctionId: String(round.id), amountPaise: winner.amountPaise },
  });
  return round;
};

const expireAcceptanceRound = async (round) => {
  if (round.status !== 'awaiting_acceptance') return round;
  if (round.winnerBidId) {
    const winner = await findBidById(round.winnerBidId);
    if (winner && winner.status === 'won') {
      await releaseReservation({ idempotencyKey: winner.reservationIdempotencyKey });
      winner.status = 'released';
      await saveBid(winner);
    }
  }
  round.status = 'needs_reauction';
  round.declineReason = 'Acceptance expired';
  await saveAuctionRound(round);
  await setDeviceStatus(round.deviceId, 'needs_reauction');
  await createOutboxEvent({
    topic: 'auction.acceptance_expired',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-expired:${round.id}`,
    payload: { auctionId: String(round.id) },
  });
  return round;
};

export const tickAuctions = async (actor) => {
  if (actor && actor.role !== 'store_manager' && actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Auction close is restricted.');
  }
  const closed = [];
  const expired = [];
  for (const round of await listExpiredLiveRounds(now())) {
    closed.push(publicAuction(await closeLiveRound(round)));
  }
  for (const round of await listExpiredAcceptanceRounds(now())) {
    expired.push(publicAuction(await expireAcceptanceRound(round)));
  }
  return { closedCount: closed.length, closed, expiredCount: expired.length, expired };
};

export const declineAuction = async (actor, id, body) => {
  const round = await requireManagerRound(actor, id);
  if (round.status !== 'awaiting_acceptance') {
    throw new ApiError(409, 'CONFLICT', 'Only an awaiting offer can be declined.');
  }
  const reasonCode = typeof body?.reasonCode === 'string' ? body.reasonCode.trim() : '';
  if (!DECLINE_REASONS[reasonCode]) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Select a valid decline reason.');
  }
  const detail = String(body?.reason || '').trim();
  if (reasonCode === 'other' && !detail) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Other requires a reason.');
  }
  if (round.winnerBidId) {
    const winner = await findBidById(round.winnerBidId);
    if (winner && winner.status === 'won') {
      await releaseReservation({ idempotencyKey: winner.reservationIdempotencyKey, actorId: actor.id });
      winner.status = 'released';
      await saveBid(winner);
    }
  }
  round.status = 'needs_reauction';
  round.declineReason = reasonCode === 'other' ? detail : DECLINE_REASONS[reasonCode];
  await saveAuctionRound(round);
  await setDeviceStatus(round.deviceId, 'needs_reauction');
  await createOutboxEvent({
    topic: 'auction.declined',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-declined:${round.id}`,
    payload: { auctionId: String(round.id), reason: round.declineReason },
  });
  return publicAuction(round);
};

export const rebidAuction = async (actor, id, body) => {
  const round = await requireManagerRound(actor, id);
  if (round.status !== 'awaiting_acceptance') {
    throw new ApiError(409, 'DUPLICATE_REBID', 'This offer is no longer open for a rebid.');
  }
  const expectedAmountPaise = Number.parseInt(body?.expectedAmountPaise, 10);
  if (!Number.isInteger(expectedAmountPaise) || expectedAmountPaise < 1) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Enter a positive customer-expectation amount in paise.');
  }
  if (round.winnerBidId) {
    const winner = await findBidById(round.winnerBidId);
    if (winner && winner.status === 'won') {
      await releaseReservation({ idempotencyKey: winner.reservationIdempotencyKey, actorId: actor.id });
      winner.status = 'released';
      await saveBid(winner);
    }
  }
  round.status = 'needs_reauction';
  round.declineReason = 'Rebid requested';
  round.expectedAmountPaise = expectedAmountPaise;
  await saveAuctionRound(round);
  const device = await findDeviceById(round.deviceId);
  if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
  device.status = 'needs_reauction';
  await saveDevice(device);
  const next = await startAuction(actor, String(device.id));
  const live = await findLiveRoundForDevice(device.id);
  if (live) {
    live.expectedAmountPaise = expectedAmountPaise;
    await saveAuctionRound(live);
    next.expectedAmountPaise = expectedAmountPaise;
  }
  await createOutboxEvent({
    topic: 'auction.rebid',
    aggregateType: 'auction_round',
    aggregateId: String(round.id),
    idempotencyKey: `auction-rebid:${round.id}`,
    payload: { auctionId: String(round.id), expectedAmountPaise, nextAuctionId: next.id },
  });
  return { previous: publicAuction(round), next };
};

export const placeBid = async (actor, auctionId, body) => {
  if (actor.role !== 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Only a vendor can place a bid.');
  const round = await findAuctionById(requireObjectId(auctionId, 'auction id'));
  if (!round) throw new ApiError(404, 'NOT_FOUND', 'Auction was not found.');
  const links = await listAssignments({ accountId: actor.id, kind: 'vendor', active: true, branchId: round.branchId });
  if (!links.length) throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This auction is outside your assigned stores.');
  if (round.status !== 'live' || now() >= new Date(round.closesAt)) {
    throw new ApiError(409, 'AUCTION_CLOSED', 'This auction is no longer open for bids.');
  }
  const amountPaise = Number.parseInt(body.amountPaise, 10);
  if (!Number.isInteger(amountPaise) || amountPaise < 1) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter a positive bid amount in paise.');
  const idempotencyKey = typeof body.idempotencyKey === 'string' ? body.idempotencyKey.trim() : '';
  if (!idempotencyKey) throw new ApiError(400, 'VALIDATION_ERROR', 'An idempotency key is required.');
  const existingKey = await findBidByKey(idempotencyKey);
  if (existingKey) return { bid: publicBid(existingKey), replayed: true };
  const existingVendor = await findVendorBid(round.id, actor.id);
  if (existingVendor) throw new ApiError(409, 'DUPLICATE_BID', 'You already placed a bid in this round.');
  const { rate, feePaise } = platformFee(amountPaise);
  const totalPaise = amountPaise + feePaise;
  await reserveFunds({
    vendorAccountId: actor.id,
    amountPaise: totalPaise,
    idempotencyKey: `bid-hold:${idempotencyKey}`,
    reason: 'bid',
    referenceId: String(round.id),
    actorId: actor.id,
  });
  let bid;
  try {
    bid = await createBid({
      roundId: round.id,
      deviceId: round.deviceId,
      vendorAccountId: actor.id,
      amountPaise,
      feePaise,
      feeRate: rate,
      totalPaise,
      basePaise: Number.parseInt(body.basePaise, 10) || amountPaise,
      cosmeticDeductionPaise: Number.parseInt(body.cosmeticDeductionPaise, 10) || 0,
      batteryDeductionPaise: Number.parseInt(body.batteryDeductionPaise, 10) || 0,
      status: 'submitted',
      reservationIdempotencyKey: `bid-hold:${idempotencyKey}`,
      idempotencyKey,
    });
  } catch (error) {
    if (duplicateError(error)) throw new ApiError(409, 'DUPLICATE_BID', 'You already placed a bid in this round.');
    throw error;
  }
  round.bidCount += 1;
  if (amountPaise > round.highestAmountPaise) round.highestAmountPaise = amountPaise;
  await saveAuctionRound(round);
  await createOutboxEvent({
    topic: 'bid.submitted',
    aggregateType: 'bid',
    aggregateId: String(bid.id),
    idempotencyKey: `bid-submitted:${bid.id}`,
    payload: { bidId: String(bid.id), auctionId: String(round.id), amountPaise },
  });
  return { bid: publicBid(bid), replayed: false };
};

export const listMyBids = async (actor) => {
  if (actor.role !== 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Only a vendor can list personal bids.');
  return (await listBidsForVendor(actor.id)).map(publicBid);
};

export const readBid = async (actor, id) => {
  const bid = await findBidById(requireObjectId(id, 'bid id'));
  if (!bid) throw new ApiError(404, 'NOT_FOUND', 'Bid was not found.');
  if (actor.role === 'vendor' && String(bid.vendorAccountId) !== String(actor.id)) {
    throw new ApiError(403, 'FORBIDDEN', 'You can only view your own bid.');
  }
  if (actor.role !== 'vendor') {
    const scope = await loadScope(actor);
    const round = await findAuctionById(bid.roundId);
    if (round) assertBranchInScope(scope, round.branchId);
  }
  return publicBid(bid);
};

const STUB_OTP = '123456';

const publicPayment = (row) => presentPayment(row);

const publicDeal = async (deal, actor) => {
  const instruction = await findPaymentByDeal(deal.id);
  const branch = await findBranchById(deal.branchId);
  const payload = {
    id: String(deal.id),
    auctionRoundId: String(deal.auctionRoundId),
    deviceId: String(deal.deviceId),
    branchId: String(deal.branchId),
    vendorAccountId: String(deal.vendorAccountId),
    bidId: String(deal.bidId),
    amountPaise: deal.amountPaise,
    feePaise: deal.feePaise,
    totalPaise: deal.totalPaise,
    status: deal.status,
    paymentInstruction: publicPayment(instruction),
    pickedUpAt: deal.pickedUpAt || null,
    branch: branch ? {
      name: branch.name,
      address: branch.address || '',
      city: branch.city || '',
      contactName: branch.contactName || '',
      contactPhone: branch.contactPhone || '',
    } : null,
  };
  if (actor.role === 'vendor') return payload;
  payload.customerName = deal.customerName || '';
  payload.customerPhone = deal.customerPhone || '';
  payload.otpVerified = Boolean(deal.otpVerified);
  payload.idCaptured = Boolean(deal.idCaptured);
  payload.portraitCaptured = Boolean(deal.portraitCaptured);
  payload.purchasedDevice = deal.purchasedDevice || null;
  return payload;
};

const requireDeal = async (actor, id) => {
  const deal = await findDealById(requireObjectId(id, 'deal id'));
  if (!deal) throw new ApiError(404, 'NOT_FOUND', 'Deal was not found.');
  if (actor.role === 'vendor') {
    if (String(deal.vendorAccountId) !== String(actor.id)) {
      throw new ApiError(403, 'FORBIDDEN', 'You can only view your own purchased device.');
    }
    return deal;
  }
  const scope = await loadScope(actor);
  assertBranchInScope(scope, deal.branchId);
  return deal;
};

const requireManagerDeal = async (actor, id) => {
  if (actor.role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Vendors cannot change customer verification or pickup.');
  return requireDeal(actor, id);
};

export const acceptAuction = async (actor, id) => {
  const round = await requireManagerRound(actor, id);
  const existing = await findDealByRound(round.id);
  if (existing) return { deal: await publicDeal(existing, actor), replayed: true };
  if (round.status !== 'awaiting_acceptance' || now() >= new Date(round.acceptanceDeadlineAt || 0)) {
    if (round.status === 'awaiting_acceptance') await expireAcceptanceRound(round);
    throw new ApiError(409, 'OFFER_EXPIRED', 'The acceptance window has ended.');
  }
  const claimed = await claimAcceptance(round.id, now());
  if (!claimed) {
    const current = await findAuctionById(round.id);
    const deal = current ? await findDealByRound(current.id) : null;
    if (deal) return { deal: await publicDeal(deal, actor), replayed: true };
    throw new ApiError(409, 'OFFER_EXPIRED', 'The acceptance window has ended.');
  }
  const winner = await findBidById(claimed.winnerBidId);
  if (!winner) throw new ApiError(409, 'CONFLICT', 'The winning bid is missing.');
  await commitReservation({ idempotencyKey: winner.reservationIdempotencyKey, actorId: actor.id });
  winner.status = 'committed';
  await saveBid(winner);
  await setDeviceStatus(claimed.deviceId, 'accepted');
  const branch = await findBranchById(claimed.branchId, { withAccount: true });
  let deal;
  try {
    deal = await createDeal({
      auctionRoundId: claimed.id,
      deviceId: claimed.deviceId,
      branchId: claimed.branchId,
      vendorAccountId: winner.vendorAccountId,
      bidId: winner.id,
      amountPaise: winner.amountPaise,
      feePaise: winner.feePaise,
      totalPaise: winner.totalPaise,
      status: 'awaiting_customer_verification',
    });
  } catch (error) {
    if (!duplicateError(error)) throw error;
    deal = await findDealByRound(claimed.id);
  }
  let instruction;
  try {
    instruction = await createPaymentInstruction({
      dealId: deal.id,
      branchId: claimed.branchId,
      amountPaise: winner.amountPaise,
      feePaise: winner.feePaise,
      status: 'awaiting_customer_verification',
      beneficiaryName: branch?.beneficiaryName || '',
      accountNumberMasked: maskAccountNumber(branch?.accountNumber),
      ifsc: branch?.ifsc || '',
      idempotencyKey: `payout:${claimed.id}`,
      reservationIdempotencyKey: winner.reservationIdempotencyKey,
      vendorAccountId: winner.vendorAccountId,
    });
  } catch (error) {
    if (!duplicateError(error)) throw error;
    instruction = await findPaymentByDeal(deal.id);
  }
  deal.paymentInstructionId = instruction.id;
  await saveDeal(deal);
  await createOutboxEvent({
    topic: 'deal.accepted',
    aggregateType: 'deal',
    aggregateId: String(deal.id),
    idempotencyKey: `deal-accepted:${claimed.id}`,
    payload: { dealId: String(deal.id), auctionId: String(claimed.id) },
  });
  return { deal: await publicDeal(deal, actor), replayed: false };
};

export const readDeal = async (actor, id) => publicDeal(await requireDeal(actor, id), actor);

export const listVisibleDeals = async (actor, query = {}) => {
  const filter = {};
  if (query.deviceId) filter.deviceId = requireObjectId(query.deviceId, 'device id');
  if (query.status) filter.status = query.status;
  if (actor.role === 'vendor') {
    filter.vendorAccountId = actor.id;
  } else {
    const scope = await loadScope(actor);
    if (!scope.all) filter.branchId = { $in: scope.branchIds };
  }
  return Promise.all((await listDeals(filter)).map((deal) => publicDeal(deal, actor)));
};

export const markDealPickup = async (actor, id) => {
  if (actor.role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Only the originating store can mark pickup.');
  const deal = await requireManagerDeal(actor, id);
  if (deal.status === 'picked_up') {
    await notifyPickup(deal);
    return { deal: await publicDeal(deal, actor), replayed: true };
  }
  if (deal.status !== 'paid') throw new ApiError(409, 'PAYMENT_UNRESOLVED', 'Pickup waits until the store payout is paid.');
  deal.status = 'picked_up';
  deal.pickedUpAt = now();
  deal.pickedUpByAccountId = actor.id;
  await saveDeal(deal);
  await setDeviceStatus(deal.deviceId, 'picked_up');
  await createOutboxEvent({
    topic: 'deal.picked_up',
    aggregateType: 'deal',
    aggregateId: String(deal.id),
    idempotencyKey: `deal-pickup:${deal.id}`,
    payload: { dealId: String(deal.id), deviceId: String(deal.deviceId) },
  });
  await notifyPickup(deal);
  return { deal: await publicDeal(deal, actor), replayed: false };
};

export const listAuctionBids = async (actor, id) => {
  if (actor.role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Vendors can only view their own bid.');
  const round = await findAuctionById(requireObjectId(id, 'auction id'));
  if (!round) throw new ApiError(404, 'NOT_FOUND', 'Auction was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, round.branchId);
  const bids = await listBidsForRound(round.id);
  const vendors = await listAccounts({ _id: { $in: bids.map((bid) => bid.vendorAccountId) } });
  const names = Object.fromEntries(vendors.map((vendor) => [String(vendor.id), vendor.displayName || vendor.email]));
  return bids.map((bid) => ({ ...publicBid(bid), vendorName: names[String(bid.vendorAccountId)] || 'Vendor' }));
};

export const sendDealOtp = async (actor, id) => {
  const deal = await requireManagerDeal(actor, id);
  if (deal.status === 'verified') throw new ApiError(409, 'CONFLICT', 'Customer verification is already complete.');
  deal.otpSentAt = now();
  await saveDeal(deal);
  return { sent: true, stub: true };
};

export const verifyDeal = async (actor, id, body) => {
  const deal = await requireManagerDeal(actor, id);
  if (deal.status === 'verified' || deal.status === 'paid' || deal.status === 'picked_up') return publicDeal(deal, actor);
  const name = String(body?.customerName || '').trim();
  const phone = String(body?.customerPhone || '').trim();
  const otp = String(body?.otp || '').trim();
  if (!name) throw new ApiError(400, 'VALIDATION_ERROR', 'Customer name is required.');
  if (!/^\d{10}$/.test(phone)) throw new ApiError(400, 'VALIDATION_ERROR', 'Enter a 10-digit customer phone number.');
  if (otp !== STUB_OTP) throw new ApiError(400, 'VALIDATION_ERROR', 'The verification code is incorrect.');
  if (!body?.idCaptured || !body?.portraitCaptured) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Capture identity and portrait evidence.');
  }
  const purchased = body?.purchasedDevice || {};
  const platform = purchased.platform;
  if (platform !== 'apple' && platform !== 'android') {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Select Apple or Android for the purchased device.');
  }
  const model = String(purchased.model || '').trim();
  if (!model) throw new ApiError(400, 'VALIDATION_ERROR', 'Purchased device model is required.');
  if (!storageOptions.includes(purchased.storage)) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Select a valid purchased-device storage.');
  }
  if (platform === 'android' && !ramOptions.includes(purchased.ram)) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Select Android RAM 4, 6, 8, 12 or 24 GB.');
  }
  if (platform === 'apple' && purchased.ram) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Apple purchased devices do not include RAM.');
  }
  const imei1 = String(purchased.imei1 || '').trim();
  const imei2 = String(purchased.imei2 || '').trim();
  if (!/^\d{15}$/.test(imei1) || !/^\d{15}$/.test(imei2) || imei1 === imei2) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Enter two distinct 15-digit IMEIs.');
  }
  deal.customerName = name;
  deal.customerPhone = phone;
  deal.otpVerified = true;
  deal.idCaptured = true;
  deal.portraitCaptured = true;
  deal.purchasedDevice = {
    platform,
    model,
    storage: purchased.storage,
    ram: platform === 'android' ? purchased.ram : '',
    imei1,
    imei2,
  };
  deal.status = 'verified';
  await saveDeal(deal);
  const instruction = await findPaymentByDeal(deal.id);
  if (instruction && instruction.status === 'awaiting_customer_verification') {
    instruction.status = 'ready_for_transfer';
    await savePaymentInstruction(instruction);
    await startPayout(instruction);
  }
  await createOutboxEvent({
    topic: 'deal.verified',
    aggregateType: 'deal',
    aggregateId: String(deal.id),
    idempotencyKey: `deal-verified:${deal.id}`,
    payload: { dealId: String(deal.id) },
  });
  return publicDeal(deal, actor);
};

