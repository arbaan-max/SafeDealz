import mongoose from 'mongoose';
import { AuctionRound } from '../models/auction-round.model.js';
import { Bid } from '../models/bid.model.js';
import { Branch } from '../models/branch.model.js';
import { Chain } from '../models/chain.model.js';
import { Deal } from '../models/deal.model.js';
import { Device } from '../models/device.model.js';
import { PaymentInstruction } from '../models/payment-instruction.model.js';
import { RewardLedger } from '../models/reward-ledger.model.js';
import { WalletLedger } from '../models/wallet-ledger.model.js';
import { listAssignments } from '../repositories/store-assignment.repository.js';
import { listAuditEvents } from '../repositories/audit-event.repository.js';
import { listBranches } from '../repositories/branch.repository.js';
import { listAccounts } from '../repositories/account.repository.js';
import { ApiError } from '../utils/api-error.js';
import { loadScope } from './scope.service.js';

const objectIds = (ids) => ids.map((id) => new mongoose.Types.ObjectId(String(id)));

const endOfDay = (value) => {
  const date = new Date(value);
  if (/^\d{4}-\d{2}-\d{2}$/.test(String(value))) date.setHours(23, 59, 59, 999);
  return date;
};

const periodFilter = (query, field = 'createdAt') => {
  const filter = {};
  if (query.from) filter[field] = { ...(filter[field] || {}), $gte: new Date(query.from) };
  if (query.to) filter[field] = { ...(filter[field] || {}), $lte: endOfDay(query.to) };
  return filter;
};

const scopedBranches = async (actor, query = {}) => {
  const scope = await loadScope(actor);
  let branchIds = scope.all ? (await listBranches({})).map((row) => String(row.id)) : scope.branchIds;
  if (query.branchId) {
    if (!scope.all && !scope.branchIds.includes(String(query.branchId))) {
      throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This store is outside your assigned access.');
    }
    branchIds = [String(query.branchId)];
  }
  if (query.chainId) {
    const chainBranches = await listBranches({ chainId: query.chainId, ...(scope.all ? {} : { _id: { $in: branchIds } }) });
    branchIds = chainBranches.map((row) => String(row.id));
  }
  return { scope, branchIds };
};

export const readOverview = async (actor) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Overview is limited to Admin accounts.');
  }
  const { branchIds, scope } = await scopedBranches(actor);
  const ids = objectIds(branchIds);
  const branchFilter = scope.all ? {} : { branchId: { $in: ids } };
  const startOfDay = new Date();
  startOfDay.setHours(0, 0, 0, 0);
  const weekStart = new Date(startOfDay);
  weekStart.setDate(weekStart.getDate() - 6);
  const [liveAuctions, awaitingAcceptance, paymentExceptions, paid, paidToday, weekPaid, branches, recentRounds] = await Promise.all([
    AuctionRound.countDocuments({ status: 'live', ...branchFilter }),
    AuctionRound.countDocuments({ status: 'awaiting_acceptance', ...branchFilter }),
    PaymentInstruction.countDocuments({ status: { $in: ['needs_attention', 'unknown'] }, ...branchFilter }),
    PaymentInstruction.find({ status: 'paid', ...branchFilter }),
    PaymentInstruction.find({ status: 'paid', ...branchFilter, createdAt: { $gte: startOfDay } }),
    PaymentInstruction.find({ status: 'paid', ...branchFilter, createdAt: { $gte: weekStart } }),
    listBranches(scope.all ? {} : { _id: { $in: ids } }),
    AuctionRound.find(branchFilter).sort({ opensAt: -1 }).limit(5),
  ]);
  const completedValuePaise = paid.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const paidTodayPaise = paidToday.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const weeklyPaidPaise = Array.from({ length: 7 }, (_, index) => {
    const day = new Date(weekStart);
    day.setDate(weekStart.getDate() + index);
    const next = new Date(day);
    next.setDate(day.getDate() + 1);
    return weekPaid.filter((row) => row.createdAt >= day && row.createdAt < next).reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  });
  const devices = await Device.find({ _id: { $in: recentRounds.map((row) => row.deviceId) } });
  const deviceMap = Object.fromEntries(devices.map((row) => [String(row.id), row]));
  const branchMap = Object.fromEntries(branches.map((row) => [String(row.id), row]));
  const needsAttention = [
    ...((await PaymentInstruction.find({ status: { $in: ['needs_attention', 'unknown'] }, ...branchFilter }).limit(20)).map((row) => ({
      kind: 'payment', id: String(row.id), label: `Payment ${row.status.replaceAll('_', ' ')}`,
    }))),
    ...branches.filter((branch) => !(branch.beneficiaryName && branch.ifsc)).map((branch) => ({
      kind: 'branch_setup', id: String(branch.id), label: `${branch.name} payout details incomplete`,
    })),
  ];
  return {
    liveAuctions,
    awaitingAcceptance,
    paymentExceptions,
    completedValuePaise,
    paidTodayPaise,
    weeklyPaidPaise,
    recentAuctions: recentRounds.map((round) => {
      const device = deviceMap[String(round.deviceId)];
      const branch = branchMap[String(round.branchId)];
      return {
        id: String(round.id),
        device: device?.model || 'Device',
        storage: device?.storage || '',
        branch: branch?.name || '',
        status: round.status,
        highestAmountPaise: round.highestAmountPaise || 0,
        roundNumber: round.roundNumber,
      };
    }),
    needsAttention,
  };
};

export const readReports = async (actor, query = {}) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Reports are limited to Admin accounts.');
  }
  const { branchIds } = await scopedBranches(actor, query);
  const created = periodFilter(query);
  const ids = objectIds(branchIds);
  const branchFilter = { branchId: { $in: ids } };
  const vendorIds = (await listAssignments({ branchId: { $in: ids }, kind: 'vendor', active: true })).map((row) => row.accountId);
  const [started, acceptedDeals, paid, pickups, walletRows, earnRows, redeemRows, branches, chains] = await Promise.all([
    AuctionRound.countDocuments({ ...branchFilter, ...created }),
    Deal.find({ ...branchFilter, ...created }),
    PaymentInstruction.find({ status: 'paid', ...branchFilter, ...created }),
    Deal.countDocuments({ status: 'picked_up', ...branchFilter, ...created }),
    WalletLedger.find({ type: { $in: ['credit', 'commit', 'settle'] }, vendorAccountId: { $in: vendorIds }, ...created }),
    RewardLedger.find({ type: 'earn', ...branchFilter, ...created }),
    RewardLedger.find({ type: 'redeem', ...branchFilter, ...created }),
    listBranches({ _id: { $in: ids } }),
    Chain.find({}),
  ]);
  const accepted = acceptedDeals.length;
  const paidValuePaise = paid.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const acceptedValuePaise = acceptedDeals.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const walletMovementsPaise = walletRows.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const rewardIssuedPoints = earnRows.reduce((sum, row) => sum + (row.points || 0), 0);
  const rewardRedeemedPoints = redeemRows.reduce((sum, row) => sum + (row.points || 0), 0);
  const outstandingValuePaise = earnRows.reduce((sum, row) => sum + (row.valuePaise || 0), 0) - redeemRows.reduce((sum, row) => sum + (row.valuePaise || 0), 0);
  const chainNames = Object.fromEntries(chains.map((chain) => [String(chain.id), chain.name]));
  const startedByBranch = await AuctionRound.aggregate([
    { $match: { ...branchFilter, ...created } },
    { $group: { _id: '$branchId', auctions: { $sum: 1 } } },
  ]);
  const auctionMap = Object.fromEntries(startedByBranch.map((row) => [String(row._id), row.auctions]));
  const branchRows = branches.map((branch) => {
    const key = String(branch.id);
    const paidDeals = paid.filter((row) => String(row.branchId) === key).length;
    const redeemed = redeemRows.filter((row) => String(row.branchId) === key).reduce((sum, row) => sum + (row.valuePaise || 0), 0);
    const invoices = redeemRows.filter((row) => String(row.branchId) === key && row.invoiceNumber).length
      + paid.filter((row) => String(row.branchId) === key).length;
    return {
      branchId: key,
      branchName: `${chainNames[String(branch.chainId)] || 'Store'} / ${branch.name}`,
      auctions: auctionMap[key] || 0,
      paidDeals,
      rewardsRedeemedPaise: redeemed,
      invoices,
    };
  });
  return {
    auctionConversion: { started, accepted, rate: started ? accepted / started : 0 },
    acceptedValuePaise,
    paidValuePaise,
    pickupCount: pickups,
    walletMovementsPaise,
    rewardIssuedPoints,
    rewardRedeemedPoints,
    billingReconciliation: { paidValuePaise, rewardOutstandingValuePaise: Math.max(0, outstandingValuePaise) },
    branches: branchRows,
  };
};

const csvCell = (value) => {
  const text = String(value ?? '');
  return /^[=+\-@]/.test(text) ? `'${text.replaceAll('"', '""')}` : text;
};

export const exportReports = async (actor, query = {}) => {
  const report = await readReports(actor, query);
  const csv = [
    'metric,value',
    `started,${csvCell(report.auctionConversion.started)}`,
    `accepted,${csvCell(report.auctionConversion.accepted)}`,
    `acceptedValuePaise,${csvCell(report.acceptedValuePaise)}`,
    `paidValuePaise,${csvCell(report.paidValuePaise)}`,
    `pickupCount,${csvCell(report.pickupCount)}`,
    `walletMovementsPaise,${csvCell(report.walletMovementsPaise)}`,
    `rewardIssuedPoints,${csvCell(report.rewardIssuedPoints)}`,
    `rewardRedeemedPoints,${csvCell(report.rewardRedeemedPoints)}`,
  ].join('\n');
  return { filename: 'safedealz-report.csv', csv, generatedAt: new Date().toISOString() };
};

export const listAudit = async (actor, query = {}) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Audit is limited to Admin accounts.');
  }
  const scope = await loadScope(actor);
  const filter = {};
  if (query.action) filter.action = query.action;
  if (query.entityType) filter.entityType = query.entityType;
  if (!scope.all) filter.storeId = { $in: objectIds(scope.branchIds) };
  const rows = await listAuditEvents(filter);
  const [stores, actors] = await Promise.all([
    listBranches({ _id: { $in: rows.map((row) => row.storeId).filter(Boolean) } }),
    listAccounts({ _id: { $in: rows.map((row) => row.actorId).filter(Boolean) } }),
  ]);
  const chains = await Chain.find({ _id: { $in: stores.map((row) => row.chainId).filter(Boolean) } });
  const chainNames = Object.fromEntries(chains.map((chain) => [String(chain.id), chain.name]));
  const storeMap = Object.fromEntries(stores.map((row) => {
    const chain = chainNames[String(row.chainId)];
    return [String(row.id), chain ? `${chain} / ${row.name}` : row.name];
  }));
  const actorMap = Object.fromEntries(actors.map((row) => [String(row.id), row.displayName || row.email]));
  const objectLabel = (row) => {
    const meta = row.metadata && typeof row.metadata === 'object' ? row.metadata : {};
    if (meta.objectLabel) return String(meta.objectLabel);
    if (meta.device) return String(meta.device);
    if (row.storeId && storeMap[String(row.storeId)]) return storeMap[String(row.storeId)];
    if (row.entityType === 'settings') return 'Platform settings';
    return row.entityType?.replaceAll('_', ' ') || 'Record';
  };
  return rows.map((row) => ({
    id: String(row.id),
    actorId: String(row.actorId),
    actorName: actorMap[String(row.actorId)] || row.actorRole,
    actorRole: row.actorRole,
    action: row.action.replace(/^dummy-seed-/, ''),
    entityType: row.entityType,
    entityId: row.entityId,
    storeId: row.storeId ? String(row.storeId) : '',
    storeName: row.storeId ? (storeMap[String(row.storeId)] || '') : '',
    objectLabel: objectLabel(row),
    createdAt: row.createdAt,
    metadata: row.metadata && typeof row.metadata === 'object'
      ? Object.fromEntries(Object.entries(row.metadata).filter(([key]) => !/otp|kyc|password|accountNumber/i.test(key)))
      : {},
  }));
};

export const readVendorPerformance = async (actor, query = {}) => {
  if (actor.role !== 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Performance is limited to the vendor account.');
  const created = periodFilter(query);
  const bids = await Bid.find({ vendorAccountId: actor.id, ...created });
  const wins = bids.filter((row) => row.status === 'won' || row.status === 'committed');
  const deals = await Deal.find({ vendorAccountId: actor.id, status: { $in: ['paid', 'picked_up'] }, ...created });
  const rounds = await AuctionRound.find({ _id: { $in: bids.map((row) => row.roundId) } });
  const roundMap = Object.fromEntries(rounds.map((row) => [String(row.id), row]));
  const responseSeconds = bids.map((bid) => {
    const round = roundMap[String(bid.roundId)];
    if (!round?.opensAt || !bid.createdAt) return null;
    return Math.max(0, (new Date(bid.createdAt) - new Date(round.opensAt)) / 1000);
  }).filter((value) => value != null);
  const hourly = Array.from({ length: 24 }, (_, hour) => ({
    hour,
    bids: bids.filter((bid) => new Date(bid.createdAt).getHours() === hour).length,
  }));
  return {
    bids: bids.length,
    wins: wins.length,
    acceptedPurchases: deals.length,
    winRate: bids.length ? wins.length / bids.length : 0,
    averageResponseSeconds: responseSeconds.length ? responseSeconds.reduce((sum, value) => sum + value, 0) / responseSeconds.length : 0,
    hourly,
  };
};
