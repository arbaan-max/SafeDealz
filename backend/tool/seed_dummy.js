#!/usr/bin/env node
/**
 * Local dummy data for SafeDealz.
 *
 *   node tool/seed_dummy.js          Upsert the test users and (re)load dummy records
 *   node tool/seed_dummy.js --clear  Delete dummy records; keep the user accounts
 *   node tool/seed_dummy.js --reset  Clear dummy records, then seed again
 *
 * Dummy operational rows are tagged by DEMO- chain codes and dummy-seed-* keys.
 * --clear does not delete Account documents.
 */
import mongoose from 'mongoose';
import { env } from '../src/config/env.js';
import { hashPassword, normalizeEmail } from '../src/utils/auth-crypto.js';
import { platformFee } from '../src/utils/auction-fee.js';
import { Account } from '../src/models/account.model.js';
import { Chain } from '../src/models/chain.model.js';
import { Branch } from '../src/models/branch.model.js';
import { StoreAssignment } from '../src/models/store-assignment.model.js';
import { Device } from '../src/models/device.model.js';
import { AuctionRound } from '../src/models/auction-round.model.js';
import { Bid } from '../src/models/bid.model.js';
import { Deal } from '../src/models/deal.model.js';
import { PaymentInstruction } from '../src/models/payment-instruction.model.js';
import { Wallet } from '../src/models/wallet.model.js';
import { WalletLedger } from '../src/models/wallet-ledger.model.js';
import { WalletReservation } from '../src/models/wallet-reservation.model.js';
import { WalletRecharge } from '../src/models/wallet-recharge.model.js';
import { SupportTicket } from '../src/models/support-ticket.model.js';
import { Notification } from '../src/models/notification.model.js';
import { RewardPolicy } from '../src/models/reward-policy.model.js';
import { RewardAccount } from '../src/models/reward-account.model.js';
import { RewardLedger } from '../src/models/reward-ledger.model.js';
import { RewardRedemption } from '../src/models/reward-redemption.model.js';
import { AuditEvent } from '../src/models/audit-event.model.js';
import { OutboxEvent } from '../src/models/outbox-event.model.js';
import { MediaObject } from '../src/models/media-object.model.js';
import { DiagnosticImport } from '../src/models/diagnostic-import.model.js';
import { PlatformSettings } from '../src/models/platform-settings.model.js';
import { catalogVersion, sampleDiagnosticPayload, sampleInspectionAnswers } from '../src/services/inspection-catalog.js';

const PASSWORD = '1234567890';
const USERS = [
  { email: 'mergeme2@gmail.com', role: 'super_admin', displayName: 'Merge Me', phone: '9876500000' },
  { email: 'mergeme.admin@gmail.com', role: 'admin', displayName: 'Ananya Rao', phone: '9876500099' },
  { email: 'mergeme.manager@gmail.com', role: 'store_manager', displayName: 'Kavya Rao', phone: '9876500001' },
  { email: 'mergeme.vendor@gmail.com', role: 'vendor', displayName: 'Uday Mobiles', phone: '9876500002' },
];
const DEMO_CHAIN_CODES = ['DEMO-PAI', 'DEMO-SANG'];
const SEED_PREFIX = 'dummy-seed-';

const say = (line) => process.stdout.write(`${line}\n`);
const idOf = (doc) => doc._id;
const args = new Set(process.argv.slice(2));

const usage = () => {
  say('Usage:');
  say('  node tool/seed_dummy.js          Upsert users and dummy data');
  say('  node tool/seed_dummy.js --clear  Delete dummy data; keep user accounts');
  say('  node tool/seed_dummy.js --reset  Clear dummy data, then seed again');
};

const upsertUsers = async () => {
  const passwordHash = await hashPassword(PASSWORD);
  const accounts = {};
  for (const user of USERS) {
    const email = normalizeEmail(user.email);
    const account = await Account.findOneAndUpdate(
      { email },
      { $set: { email, passwordHash, role: user.role, displayName: user.displayName, phone: user.phone, active: true } },
      { upsert: true, returnDocument: 'after', setDefaultsOnInsert: true },
    );
    accounts[user.role] = account;
    say(`user  ${user.role.padEnd(14)} ${email}`);
  }
  return accounts;
};

const demoChains = async () => Chain.find({ code: { $in: DEMO_CHAIN_CODES } });

const clearDummy = async ({ quiet = false } = {}) => {
  const chains = await demoChains();
  const chainIds = chains.map(idOf);
  const branches = chainIds.length ? await Branch.find({ chainId: { $in: chainIds } }) : [];
  const branchIds = branches.map(idOf);
  const devices = branchIds.length ? await Device.find({ branchId: { $in: branchIds } }) : [];
  const deviceIds = devices.map(idOf);
  const rounds = deviceIds.length ? await AuctionRound.find({ deviceId: { $in: deviceIds } }) : [];
  const roundIds = rounds.map(idOf);
  const bids = roundIds.length ? await Bid.find({ roundId: { $in: roundIds } }) : [];
  const deals = roundIds.length ? await Deal.find({ auctionRoundId: { $in: roundIds } }) : [];
  const dealIds = deals.map(idOf);
  const payments = dealIds.length ? await PaymentInstruction.find({ dealId: { $in: dealIds } }) : [];
  const vendor = await Account.findOne({ email: normalizeEmail('mergeme.vendor@gmail.com') });
  const wallets = vendor ? await Wallet.find({ vendorAccountId: vendor._id }) : [];
  const walletIds = wallets.map(idOf);
  const rewardAccounts = branchIds.length ? await RewardAccount.find({ branchId: { $in: branchIds } }) : [];

  const deleted = {};
  const wipe = async (name, model, filter) => {
    const result = await model.deleteMany(filter);
    deleted[name] = result.deletedCount;
  };

  if (deviceIds.length) {
    await wipe('media', MediaObject, { deviceId: { $in: deviceIds } });
    await wipe('diagnostics', DiagnosticImport, { deviceId: { $in: deviceIds } });
  }
  if (roundIds.length) {
    await wipe('bids', Bid, { roundId: { $in: roundIds } });
    await wipe('deals', Deal, { auctionRoundId: { $in: roundIds } });
    await wipe('rounds', AuctionRound, { _id: { $in: roundIds } });
  }
  if (dealIds.length) await wipe('payments', PaymentInstruction, { dealId: { $in: dealIds } });
  if (deviceIds.length) await wipe('devices', Device, { _id: { $in: deviceIds } });
  if (branchIds.length) {
    await wipe('tickets', SupportTicket, { branchId: { $in: branchIds } });
    await wipe('rewardLedger', RewardLedger, { branchId: { $in: branchIds } });
    await wipe('redemptions', RewardRedemption, { branchId: { $in: branchIds } });
    await wipe('rewardAccounts', RewardAccount, { branchId: { $in: branchIds } });
    await wipe('assignments', StoreAssignment, { branchId: { $in: branchIds } });
    await wipe('branches', Branch, { _id: { $in: branchIds } });
  }
  if (chainIds.length) await wipe('chains', Chain, { _id: { $in: chainIds } });
  if (walletIds.length) {
    await wipe('walletLedger', WalletLedger, { walletId: { $in: walletIds } });
    await wipe('reservations', WalletReservation, { walletId: { $in: walletIds } });
    await wipe('wallets', Wallet, { _id: { $in: walletIds } });
  }
  if (vendor) await wipe('recharges', WalletRecharge, { vendorAccountId: vendor._id });
  await wipe('notifications', Notification, { idempotencyKey: { $regex: `^${SEED_PREFIX}` } });
  await wipe('audit', AuditEvent, { $or: [{ action: { $regex: `^${SEED_PREFIX}` } }, { 'metadata.seed': true }] });
  await wipe('outbox', OutboxEvent, { idempotencyKey: { $regex: `^${SEED_PREFIX}` } });
  await RewardPolicy.deleteMany({ note: SEED_PREFIX });

  const kept = await Account.countDocuments({ email: { $in: USERS.map((user) => normalizeEmail(user.email)) } });
  if (!quiet) {
    say(`cleared dummy data (${Object.entries(deleted).map(([name, count]) => `${name}:${count}`).join(', ') || 'nothing to delete'})`);
    say(`kept ${kept} user account(s)`);
  }
  return { chains, branches, devices, rounds, bids, deals, payments, wallets, rewardAccounts };
};

const assign = (accountId, branchId, kind) => StoreAssignment.findOneAndUpdate(
  { accountId, branchId, kind },
  { $set: { accountId, branchId, kind, active: true, assignedAt: new Date(), revokedAt: null } },
  { upsert: true, returnDocument: 'after', setDefaultsOnInsert: true },
);

const seedDummy = async (accounts) => {
  await clearDummy({ quiet: true });
  const root = accounts.super_admin;
  const admin = accounts.admin;
  const manager = accounts.store_manager;
  const vendor = accounts.vendor;
  const now = new Date();

  const pai = await Chain.create({
    name: 'PAI', code: 'DEMO-PAI', contactName: 'Ramesh Kumar',
    contactEmail: 'partner@example.test', contactPhone: '9876500100', active: true,
  });
  const sangeetha = await Chain.create({
    name: 'Sangeetha', code: 'DEMO-SANG', contactName: 'Meera Iyer',
    contactEmail: 'sangeetha@example.test', contactPhone: '9876500101', active: true,
  });

  const indiranagar = await Branch.create({
    chainId: pai._id, name: 'Indiranagar', code: 'PAI-IND',
    address: '100 Feet Road, Indiranagar', city: 'Bengaluru',
    contactName: 'Kavya Rao', contactPhone: '9876500001',
    beneficiaryName: 'PAI International', accountNumber: '123456784821', ifsc: 'HDFC0001234', active: true,
  });
  const jayanagar = await Branch.create({
    chainId: pai._id, name: 'Jayanagar', code: 'PAI-JAY',
    address: '11th Main, Jayanagar', city: 'Bengaluru',
    contactName: 'Arjun Menon', contactPhone: '9876500003',
    beneficiaryName: 'PAI International', accountNumber: '123456784822', ifsc: 'HDFC0001234', active: true,
  });
  const koramangala = await Branch.create({
    chainId: sangeetha._id, name: 'Koramangala', code: 'SAN-KOR',
    address: '80 Feet Road, Koramangala', city: 'Bengaluru',
    contactName: 'Nisha Patel', contactPhone: '9876500004',
    active: true,
  });

  await assign(admin._id, indiranagar._id, 'admin');
  await assign(manager._id, indiranagar._id, 'store_manager');
  await assign(vendor._id, indiranagar._id, 'vendor');
  await assign(vendor._id, jayanagar._id, 'vendor');
  await assign(vendor._id, koramangala._id, 'vendor');

  const liveAmount = 1500000;
  const { feePaise, rate } = platformFee(liveAmount);
  const liveTotal = liveAmount + feePaise;
  const wallet = await Wallet.create({
    vendorAccountId: vendor._id,
    availablePaise: 2000000,
    reservedPaise: liveTotal,
  });
  await WalletLedger.create({
    walletId: wallet._id, vendorAccountId: vendor._id, type: 'credit', amountPaise: 2000000 + liveTotal,
    availableAfterPaise: 2000000 + liveTotal, reservedAfterPaise: 0,
    idempotencyKey: `${SEED_PREFIX}credit`, reason: 'Confirmed recharge', actorId: root._id, referenceId: 'RZP-DEMO-1',
  });
  await WalletLedger.create({
    walletId: wallet._id, vendorAccountId: vendor._id, type: 'reserve', amountPaise: liveTotal,
    availableAfterPaise: 2000000, reservedAfterPaise: liveTotal,
    idempotencyKey: `${SEED_PREFIX}reserve-live`, reason: 'Bid hold', actorId: vendor._id, referenceId: 'BID-DEMO-LIVE',
  });
  await WalletReservation.create({
    walletId: wallet._id, amountPaise: liveTotal, status: 'held',
    idempotencyKey: `${SEED_PREFIX}hold-live`, reason: 'Live auction bid', referenceId: 'BID-DEMO-LIVE',
  });
  await WalletRecharge.create({
    vendorAccountId: vendor._id, amountPaise: 2000000 + liveTotal, orderId: `${SEED_PREFIX}order-1`,
    paymentId: `${SEED_PREFIX}pay-1`, status: 'confirmed', idempotencyKey: `${SEED_PREFIX}recharge`,
    clientAcknowledged: true, lastEvent: 'payment.captured',
  });

  const inspectionRecord = (platform, extras = {}) => ({
    answers: { ...sampleInspectionAnswers(platform), ...extras },
    source: 'store_manual',
    complete: true,
    billRequired: false,
    updatedAt: now.toISOString(),
  });
  const iphone = await Device.create({
    branchId: indiranagar._id, createdByAccountId: manager._id, platform: 'apple',
    model: 'Apple iPhone 14', imei1: '356789102345678', imei2: '356789102345686',
    storage: '128 GB', batteryHealth: 91, status: 'live', catalogVersion,
    inspection: inspectionRecord('apple'),
  });
  const samsung = await Device.create({
    branchId: jayanagar._id, createdByAccountId: manager._id, platform: 'android',
    model: 'Samsung Galaxy S22', imei1: '353456789012345', imei2: '353456789012346',
    storage: '128 GB', ram: '8 GB', status: 'picked_up', catalogVersion,
    inspection: inspectionRecord('android', {
      screenDamage: 'Up to 5 scratches under 1 cm',
      bodyScratches: 'Up to 5 scratches under 1 cm',
    }),
  });
  const vivo = await Device.create({
    branchId: koramangala._id, createdByAccountId: manager._id, platform: 'android',
    model: 'Vivo V23e 5G', imei1: '353456789012355', imei2: '353456789012356',
    storage: '128 GB', ram: '8 GB', status: 'needs_reauction', catalogVersion,
    inspection: inspectionRecord('android'),
  });
  const seedDiagnostic = async (device, nonce) => {
    const imported = await DiagnosticImport.create({
      deviceId: device._id,
      branchId: device.branchId,
      nonce,
      imei1: device.imei1,
      imei2: device.imei2,
      payload: sampleDiagnosticPayload(device, { nonce, testedAt: now.toISOString() }),
      importedByAccountId: manager._id,
      importedAt: now,
    });
    device.diagnosticImportId = imported._id;
    await device.save();
  };
  await seedDiagnostic(samsung, `${SEED_PREFIX}diag-samsung`);
  await seedDiagnostic(vivo, `${SEED_PREFIX}diag-vivo`);

  const liveRound = await AuctionRound.create({
    deviceId: iphone._id, branchId: indiranagar._id, roundNumber: 1, status: 'live',
    opensAt: new Date(now.getTime() - 60_000), closesAt: new Date(now.getTime() + 180_000),
    biddingMinutes: 3, acceptanceMinutes: 10, bidCount: 1, highestAmountPaise: liveAmount,
    winnerVendorAccountId: vendor._id, expectedAmountPaise: liveAmount,
  });
  const paidAmount = 2200000;
  const paidFee = platformFee(paidAmount);
  const paidRound = await AuctionRound.create({
    deviceId: samsung._id, branchId: jayanagar._id, roundNumber: 1, status: 'accepted',
    opensAt: new Date(now.getTime() - 3_600_000), closesAt: new Date(now.getTime() - 3_400_000),
    acceptanceDeadlineAt: new Date(now.getTime() - 2_800_000),
    biddingMinutes: 3, acceptanceMinutes: 10, bidCount: 1, highestAmountPaise: paidAmount,
    winnerVendorAccountId: vendor._id, expectedAmountPaise: paidAmount,
  });
  const expiredRound = await AuctionRound.create({
    deviceId: vivo._id, branchId: koramangala._id, roundNumber: 2, status: 'needs_reauction',
    opensAt: new Date(now.getTime() - 7_200_000), closesAt: new Date(now.getTime() - 7_000_000),
    biddingMinutes: 3, acceptanceMinutes: 10, bidCount: 1, highestAmountPaise: 850000,
    declineReason: 'Acceptance expired', expectedAmountPaise: 850000,
  });

  const liveBid = await Bid.create({
    roundId: liveRound._id, deviceId: iphone._id, vendorAccountId: vendor._id,
    amountPaise: liveAmount, feePaise, feeRate: rate, totalPaise: liveTotal,
    basePaise: 1600000, cosmeticDeductionPaise: 50000, batteryDeductionPaise: 50000,
    status: 'submitted', reservationIdempotencyKey: `${SEED_PREFIX}hold-live`,
    idempotencyKey: `${SEED_PREFIX}bid-live`,
  });
  liveRound.winnerBidId = liveBid._id;
  await liveRound.save();

  const paidBid = await Bid.create({
    roundId: paidRound._id, deviceId: samsung._id, vendorAccountId: vendor._id,
    amountPaise: paidAmount, feePaise: paidFee.feePaise, feeRate: paidFee.rate,
    totalPaise: paidAmount + paidFee.feePaise, status: 'committed',
    reservationIdempotencyKey: `${SEED_PREFIX}hold-paid`, idempotencyKey: `${SEED_PREFIX}bid-paid`,
  });
  paidRound.winnerBidId = paidBid._id;
  await paidRound.save();

  await Bid.create({
    roundId: expiredRound._id, deviceId: vivo._id, vendorAccountId: vendor._id,
    amountPaise: 850000, feePaise: platformFee(850000).feePaise, feeRate: platformFee(850000).rate,
    totalPaise: 850000 + platformFee(850000).feePaise, status: 'released',
    reservationIdempotencyKey: `${SEED_PREFIX}hold-expired`, idempotencyKey: `${SEED_PREFIX}bid-expired`,
  });

  const deal = await Deal.create({
    auctionRoundId: paidRound._id, deviceId: samsung._id, branchId: jayanagar._id,
    vendorAccountId: vendor._id, bidId: paidBid._id, amountPaise: paidAmount,
    feePaise: paidFee.feePaise, totalPaise: paidAmount + paidFee.feePaise,
    status: 'picked_up', customerName: 'Priya Nair', customerPhone: '9876501234',
    otpVerified: true, idCaptured: true, portraitCaptured: true, pickedUpAt: now,
    purchasedDevice: {
      platform: 'android', model: 'Samsung Galaxy A54', storage: '128 GB', ram: '8 GB',
      imei1: '353456789019001', imei2: '353456789019002',
    },
  });
  const payment = await PaymentInstruction.create({
    dealId: deal._id, branchId: jayanagar._id, vendorAccountId: vendor._id,
    amountPaise: paidAmount, feePaise: paidFee.feePaise, status: 'paid',
    beneficiaryName: 'PAI International', accountNumberMasked: '•••• 4822', ifsc: 'HDFC0001234',
    idempotencyKey: `${SEED_PREFIX}pay-1041`, providerTransferId: 'PAY-1041', providerStatus: 'processed',
    attempts: [{ at: now, event: 'created', status: 'processing', note: 'Instruction created' }, { at: now, event: 'confirmed', status: 'paid', note: 'Provider confirmed' }],
  });
  deal.paymentInstructionId = payment._id;
  await deal.save();

  const attentionDeal = await Deal.create({
    auctionRoundId: expiredRound._id, deviceId: vivo._id, branchId: koramangala._id,
    vendorAccountId: vendor._id, bidId: (await Bid.findOne({ idempotencyKey: `${SEED_PREFIX}bid-expired` }))._id,
    amountPaise: 1200000, feePaise: platformFee(1200000).feePaise, totalPaise: 1200000 + platformFee(1200000).feePaise,
    status: 'verified', customerName: 'Rahul Shah', customerPhone: '9876501235', otpVerified: true,
  });
  await PaymentInstruction.create({
    dealId: attentionDeal._id, branchId: koramangala._id, vendorAccountId: vendor._id,
    amountPaise: 1200000, feePaise: platformFee(1200000).feePaise, status: 'needs_attention',
    beneficiaryName: '', accountNumberMasked: '', ifsc: '',
    idempotencyKey: `${SEED_PREFIX}pay-1040`, providerTransferId: 'PAY-1040', providerStatus: 'unknown',
    attempts: [{ at: now, event: 'created', status: 'needs_attention', note: 'Unknown provider outcome' }],
  });

  await PlatformSettings.findOneAndUpdate(
    { key: 'platform' },
    { $set: { biddingMinutes: 3, acceptanceMinutes: 10 } },
    { upsert: true, returnDocument: 'after', setDefaultsOnInsert: true },
  );
  await RewardPolicy.create({
    version: Math.floor(Date.now() / 1000),
    earnPointsPerHundredRupees: 10, pointValuePaise: 50,
    eligibleCategories: ['accessories', 'value_added_services'],
    expiryDays: 0, redemptionScope: 'branch_only',
    chainRedemptionEnabled: false, multiBranchRedemptionEnabled: false,
    effectiveFrom: now, createdByAccountId: root._id, note: SEED_PREFIX,
  });
  const rewards = await RewardAccount.create({
    customerPhone: '9876501234', customerName: 'Priya Nair',
    branchId: jayanagar._id, chainId: pai._id,
    pointsBalance: 1500, issuedPoints: 1500, redeemedPoints: 0,
  });
  await RewardLedger.create({
    rewardAccountId: rewards._id, customerPhone: '9876501234', branchId: jayanagar._id,
    type: 'earn', points: 1500, valuePaise: 75000, balanceAfter: 1500,
    dealId: deal._id, paymentInstructionId: payment._id, invoiceNumber: 'SD-1041',
    idempotencyKey: `${SEED_PREFIX}reward-earn`, policyVersion: 1,
    earnPointsPerHundredRupees: 10, pointValuePaise: 50, actorId: root._id, reason: 'paid_deal',
  });

  await SupportTicket.create({
    creatorAccountId: manager._id, creatorRole: 'store_manager',
    subjectType: 'payment', subjectId: payment._id, branchId: jayanagar._id,
    reasonCode: 'payment_issue', status: 'investigating', ownerAccountId: admin._id,
    notes: [{ authorAccountId: manager._id, authorRole: 'store_manager', body: 'Customer is waiting on payout confirmation.' }],
    idempotencyKey: `${SEED_PREFIX}ticket-1`,
  });

  const notify = (recipient, role, title, body, category, audience, suffix) => Notification.create({
    recipientAccountId: recipient._id, recipientRole: role, title, body, category, audience,
    status: 'delivered', idempotencyKey: `${SEED_PREFIX}${suffix}`, actorId: root._id,
  });
  await notify(admin, 'admin', 'Pickup complete', 'Apple iPhone 14 was marked picked up at PAI / Indiranagar.', 'Pickup', 'event', 'n-admin');
  await notify(manager, 'store_manager', 'Highest offer is ready', 'iPhone 14 / PAI Indiranagar', 'Offer', 'store', 'n-manager');
  await notify(vendor, 'vendor', 'Store payout initiated', 'PAY-1041 was initiated after offer acceptance.', 'Payment', 'vendor', 'n-vendor');

  await AuditEvent.create({
    actorId: manager._id, actorRole: 'store_manager', action: `${SEED_PREFIX}auction.started`,
    entityType: 'auction_round', entityId: String(liveRound._id), storeId: indiranagar._id,
    metadata: { seed: true, objectLabel: 'PAI / Indiranagar', device: 'Apple iPhone 14' },
  });
  await AuditEvent.create({
    actorId: vendor._id, actorRole: 'vendor', action: `${SEED_PREFIX}bid.reserved`,
    entityType: 'wallet', entityId: String(wallet._id), storeId: indiranagar._id,
    metadata: { seed: true, objectLabel: 'PAI / Indiranagar', amountPaise: liveTotal },
  });
  await AuditEvent.create({
    actorId: root._id, actorRole: 'super_admin', action: `${SEED_PREFIX}bank.beneficiary_viewed`,
    entityType: 'branch', entityId: String(indiranagar._id), storeId: indiranagar._id,
    metadata: { seed: true, objectLabel: 'PAI / Indiranagar' },
  });
  await AuditEvent.create({
    actorId: admin._id, actorRole: 'admin', action: `${SEED_PREFIX}payment.instruction_created`,
    entityType: 'payment_instruction', entityId: String(payment._id), storeId: jayanagar._id,
    metadata: { seed: true, objectLabel: 'PAI / Jayanagar' },
  });

  say('dummy data loaded: 2 chains, 3 branches, live/paid/re-auction devices, wallet, rewards, ticket, notifications');
};

const printLogins = () => {
  say('');
  say('Test logins (password for all: 1234567890)');
  say('  Super Admin    mergeme2@gmail.com           React admin  →  admin_portal / web');
  say('  Admin          mergeme.admin@gmail.com      React admin  →  admin_portal / web');
  say('  Store Manager  mergeme.manager@gmail.com    Store Manager app');
  say('  Vendor         mergeme.vendor@gmail.com     Vendor app');
  say('');
  say('API create-account still requires 12+ characters; these hashes were written directly so login accepts 1234567890.');
};

const main = async () => {
  if (args.has('--help') || args.has('-h')) {
    usage();
    return;
  }
  if (args.has('--clear') && args.has('--reset')) {
    throw new Error('Use either --clear or --reset, not both.');
  }
  try {
    await mongoose.connect(env.mongoUri, { serverSelectionTimeoutMS: 5000 });
  } catch (error) {
    throw new Error(`MongoDB is not reachable at ${env.mongoUri}. Start it, then retry. (${error.message})`);
  }
  say(`MongoDB ${env.mongoUri}`);
  try {
    if (args.has('--clear')) {
      await clearDummy();
      say('user accounts were not deleted');
      printLogins();
      return;
    }
    const accounts = await upsertUsers();
    if (args.has('--reset')) say('reset: dummy data will be replaced');
    await seedDummy(accounts);
    printLogins();
  } finally {
    await mongoose.disconnect();
  }
};

main().catch((error) => {
  process.stderr.write(`${error.message}\n`);
  process.exit(1);
});
