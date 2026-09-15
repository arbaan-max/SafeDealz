import assert from 'node:assert/strict';
import { after, afterEach, before, beforeEach, describe, test } from 'node:test';
import request from 'supertest';
import { createApp } from '../app.js';
import { Account } from '../src/models/account.model.js';
import { AuctionRound } from '../src/models/auction-round.model.js';
import { Bid } from '../src/models/bid.model.js';
import { Branch } from '../src/models/branch.model.js';
import { Chain } from '../src/models/chain.model.js';
import { Device } from '../src/models/device.model.js';
import { Deal } from '../src/models/deal.model.js';
import { LoginThrottle } from '../src/models/login-throttle.model.js';
import { OutboxEvent } from '../src/models/outbox-event.model.js';
import { PaymentInstruction } from '../src/models/payment-instruction.model.js';
import { PlatformSettings } from '../src/models/platform-settings.model.js';
import { RewardAccount } from '../src/models/reward-account.model.js';
import { RewardCustomer } from '../src/models/reward-customer.model.js';
import { RewardLedger } from '../src/models/reward-ledger.model.js';
import { RewardPolicy } from '../src/models/reward-policy.model.js';
import { RewardRedemption } from '../src/models/reward-redemption.model.js';
import { Notification } from '../src/models/notification.model.js';
import { Session } from '../src/models/session.model.js';
import { StoreAssignment } from '../src/models/store-assignment.model.js';
import { Wallet } from '../src/models/wallet.model.js';
import { WalletLedger } from '../src/models/wallet-ledger.model.js';
import { WalletRecharge } from '../src/models/wallet-recharge.model.js';
import { WalletReservation } from '../src/models/wallet-reservation.model.js';
import { signPayoutWebhook } from '../src/services/payout.adapter.js';
import { addMinutes, resetNow, setNow } from '../src/utils/clock.js';
import { hashPassword } from '../src/utils/auth-crypto.js';
import { pointsFromBidPaise, valuePaiseFromPoints } from '../src/services/reward.service.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
const app = createApp();
const password = 'Correct horse 42!';

describe('product P16-P20', { concurrency: false }, () => {
before(async () => { stopMongo = await startMongoTestEnvironment(); });
after(async () => { await stopMongo(); });
afterEach(() => { resetNow(); });
beforeEach(async () => {
  await Promise.all([
    Account.deleteMany({}), Session.deleteMany({}), LoginThrottle.deleteMany({}), Chain.deleteMany({}),
    Branch.deleteMany({}), StoreAssignment.deleteMany({}), Wallet.deleteMany({}), WalletLedger.deleteMany({}),
    WalletReservation.deleteMany({}), WalletRecharge.deleteMany({}), OutboxEvent.deleteMany({}),
    Device.deleteMany({}), AuctionRound.deleteMany({}), PlatformSettings.deleteMany({}), Bid.deleteMany({}),
    Deal.deleteMany({}), PaymentInstruction.deleteMany({}),
    RewardAccount.deleteMany({}), RewardCustomer.deleteMany({}), RewardLedger.deleteMany({}), RewardPolicy.deleteMany({}), RewardRedemption.deleteMany({}),
    Notification.deleteMany({}),
  ]);
  await Account.create({ email: 'root@safedealz.test', passwordHash: await hashPassword(password), role: 'super_admin', displayName: 'Root', active: true });
});

const login = (email, expectedRole, clientType = 'web') => request(app).post('/api/v1/auth/login').send({ email, password, expectedRole, clientType });
const auth = async (email, expectedRole, clientType = 'web') => {
  const response = await login(email, expectedRole, clientType);
  assert.equal(response.status, 200, response.text);
  return response.body.data.accessToken;
};
const as = (token) => ({ authorization: `Bearer ${token}` });

const seedPaidPath = async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234',
  })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'mgr-pay@safedealz.test', password, branchId: branch.id });
  await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Uday', email: 'vendor-pay@safedealz.test', password, assignedBranchIds: [branch.id],
  });
  const manager = await auth('mgr-pay@safedealz.test', 'store_manager', 'mobile');
  const vendor = await auth('vendor-pay@safedealz.test', 'vendor', 'mobile');
  const vendorAccount = await Account.findOne({ email: 'vendor-pay@safedealz.test' });
  const managerAccount = await Account.findOne({ email: 'mgr-pay@safedealz.test' });
  await request(app).post(`/api/v1/wallets/${vendorAccount.id}/credits`).set(as(root)).send({ amountPaise: 2000000, idempotencyKey: 'p16-seed' });
  const device = await Device.create({
    branchId: branch.id, createdByAccountId: managerAccount.id, platform: 'apple', model: 'iPhone 14',
    imei1: '012345678901234', imei2: '012345678901235', storage: '128 GB', batteryHealth: 91,
    status: 'ready_for_auction', inspection: { complete: true },
  });
  const started = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 800000, idempotencyKey: 'p16-bid-1',
  });
  setNow(addMinutes(new Date(started.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const accepted = await request(app).post(`/api/v1/auctions/${started.body.data.id}/accept`).set(as(manager)).send({});
  const verifiedResponse = await request(app).post(`/api/v1/deals/${accepted.body.data.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '123456', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'android', model: 'Pixel 8', storage: '128 GB', ram: '8 GB', imei1: '353456789012345', imei2: '353456789012346' },
  });
  assert.equal(verifiedResponse.status, 200, verifiedResponse.text);
  return { root, manager, vendor, device, accepted: accepted.body.data, verified: verifiedResponse.body.data };
};

const payoutEvent = (id, event) => JSON.stringify({ event, payload: { id, status: event.replace('payout.', '') } });
const postWebhook = (body) => request(app).post('/api/v1/webhooks/payout')
  .set('x-payout-signature', signPayoutWebhook(body))
  .set('content-type', 'application/json')
  .send(body);

test('P16 KYC auto-submits payout, duplicate paid is replay, unknown blocks retry', async () => {
  const { root, manager, vendor, device, verified } = await seedPaidPath();
  assert.equal(verified.status, 'verified');
  assert.equal(verified.paymentInstruction.status, 'processing');
  const paymentId = verified.paymentInstruction.id;
  const transferId = verified.paymentInstruction.providerTransferId;
  const walletHeld = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.equal(walletHeld.body.data.reservedPaise, 0);
  assert.equal(walletHeld.body.data.availablePaise, 2000000 - 864000);
  assert.equal(walletHeld.body.data.paymentsProcessingPaise, 864000);
  const vendorList = await request(app).get('/api/v1/payments').set(as(vendor));
  assert.equal(vendorList.status, 403);
  const unknownBody = payoutEvent(transferId, 'payout.unknown');
  const unknown = await postWebhook(unknownBody);
  assert.equal(unknown.status, 200, unknown.text);
  assert.equal(unknown.body.data.status, 'unknown');
  const blocked = await request(app).post(`/api/v1/payments/${paymentId}/retry`).set(as(manager)).send({});
  assert.equal(blocked.status, 409);
  const managerReconcile = await request(app).post(`/api/v1/payments/${paymentId}/reconcile`).set(as(manager)).send({ outcome: 'failed' });
  assert.equal(managerReconcile.status, 403);
  const reconciled = await request(app).post(`/api/v1/payments/${paymentId}/reconcile`).set(as(root)).send({ outcome: 'failed' });
  assert.equal(reconciled.status, 200, reconciled.text);
  assert.equal(reconciled.body.data.status, 'needs_attention');
  const stillCommitted = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.equal(stillCommitted.body.data.availablePaise, 2000000 - 864000);
  assert.equal(stillCommitted.body.data.paymentsProcessingPaise, 864000);
  const retried = await request(app).post(`/api/v1/payments/${paymentId}/retry`).set(as(manager)).send({});
  assert.equal(retried.status, 200, retried.text);
  assert.equal(retried.body.data.status, 'processing');
  const paidBody = payoutEvent(retried.body.data.providerTransferId, 'payout.processed');
  const paid = await postWebhook(paidBody);
  assert.equal(paid.status, 200, paid.text);
  assert.equal(paid.body.data.status, 'paid');
  assert.equal(paid.body.data.paid, true);
  const replay = await postWebhook(paidBody);
  assert.equal(replay.status, 200);
  assert.equal(replay.body.data.replayed, true);
  const settled = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.equal(settled.body.data.availablePaise, 2000000 - 864000);
  assert.equal(settled.body.data.paymentsProcessingPaise, 0);
  const deal = await request(app).get(`/api/v1/deals/${verified.id}`).set(as(manager));
  assert.equal(deal.body.data.status, 'paid');
  assert.equal(deal.body.data.paymentInstruction.status, 'paid');
  const deviceRow = await Device.findById(device.id);
  assert.equal(deviceRow.status, 'awaiting_pickup');
  const listed = await request(app).get('/api/v1/payments').set(as(root));
  assert.equal(listed.status, 200);
  assert.equal(listed.body.data.length, 1);
  const detail = await request(app).get(`/api/v1/payments/${paymentId}`).set(as(root));
  assert.equal(detail.body.data.status, 'paid');
  const approveMissing = JSON.stringify(detail.body.data).toLowerCase();
  assert.equal(approveMissing.includes('approve'), false);
});

test('P17 originating store marks pickup once; vendor cannot', async () => {
  const { root, manager, vendor, device, verified } = await seedPaidPath();
  const paymentId = verified.paymentInstruction.id;
  const paidBody = payoutEvent(verified.paymentInstruction.providerTransferId, 'payout.processed');
  const paid = await postWebhook(paidBody);
  assert.equal(paid.status, 200, paid.text);
  const earlyPickup = await request(app).post(`/api/v1/deals/${verified.id}/pickup`).set(as(vendor)).send({});
  assert.equal(earlyPickup.status, 403);
  const pickup = await request(app).post(`/api/v1/deals/${verified.id}/pickup`).set(as(manager)).send({});
  assert.equal(pickup.status, 200, pickup.text);
  assert.equal(pickup.body.data.status, 'picked_up');
  assert.ok(pickup.body.data.pickedUpAt);
  const replay = await request(app).post(`/api/v1/deals/${verified.id}/pickup`).set(as(manager)).send({});
  assert.equal(replay.status, 200);
  assert.equal(replay.body.data.status, 'picked_up');
  const vendorView = await request(app).get(`/api/v1/deals/${verified.id}`).set(as(vendor));
  assert.equal(vendorView.status, 200);
  assert.equal(vendorView.body.data.status, 'picked_up');
  assert.equal(vendorView.body.data.customerName, undefined);
  const listed = await request(app).get('/api/v1/deals').set(as(vendor));
  assert.equal(listed.body.data.length, 1);
  const bids = await request(app).get(`/api/v1/auctions/${verified.auctionRoundId}/bids`).set(as(manager));
  assert.equal(bids.status, 200);
  assert.equal(bids.body.data.length, 1);
  const vendorBids = await request(app).get(`/api/v1/auctions/${verified.auctionRoundId}/bids`).set(as(vendor));
  assert.equal(vendorBids.status, 403);
  const deviceRow = await Device.findById(device.id);
  assert.equal(deviceRow.status, 'picked_up');
  assert.ok(paymentId);
  assert.ok(root);
});

test('P18 paid deal issues branch rewards once from bid excluding fee', async () => {
  assert.equal(pointsFromBidPaise(800000), 800);
  assert.equal(pointsFromBidPaise(805000), 800);
  assert.equal(pointsFromBidPaise(9999), 0);
  assert.equal(valuePaiseFromPoints(800), 40000);
  const { root, manager, vendor, verified } = await seedPaidPath();
  const paidBody = payoutEvent(verified.paymentInstruction.providerTransferId, 'payout.processed');
  const paid = await postWebhook(paidBody);
  assert.equal(paid.status, 200, paid.text);
  const replay = await postWebhook(paidBody);
  assert.equal(replay.status, 200);
  const vendorOverview = await request(app).get('/api/v1/rewards/overview').set(as(vendor));
  assert.equal(vendorOverview.status, 403);
  const overview = await request(app).get('/api/v1/rewards/overview').set(as(root));
  assert.equal(overview.status, 200, overview.text);
  assert.equal(overview.body.data.totals.issuedPoints, 800);
  assert.equal(overview.body.data.totals.outstandingPoints, 800);
  assert.equal(overview.body.data.totals.outstandingValuePaise, 40000);
  assert.equal(overview.body.data.policy.redemptionScope, 'branch_only');
  assert.equal(overview.body.data.policy.futureScopesInactive, true);
  const customer = await request(app).get('/api/v1/rewards/customers/9876543210').set(as(root));
  assert.equal(customer.status, 200, customer.text);
  assert.equal(customer.body.data.balances.length, 1);
  assert.equal(customer.body.data.balances[0].pointsBalance, 800);
  assert.equal(customer.body.data.entries.length, 1);
  assert.equal(customer.body.data.entries[0].type, 'earn');
  assert.equal(customer.body.data.entries[0].policyVersion, 1);
  assert.equal(customer.body.data.entries[0].deviceModel, 'iPhone 14');
  assert.ok(customer.body.data.entries[0].auctionRoundId);
  assert.equal(customer.body.data.issuedPoints, 800);
  assert.equal(customer.body.data.outstandingPoints, 800);
  assert.ok(customer.body.data.history.length >= 1);
  const branchId = overview.body.data.branches[0].branchId;
  assert.equal(overview.body.data.branches[0].customerCount, 1);
  const branchRewards = await request(app).get(`/api/v1/rewards/branches/${branchId}`).set(as(root));
  assert.equal(branchRewards.status, 200, branchRewards.text);
  assert.equal(branchRewards.body.data.customerCount, 1);
  assert.equal(branchRewards.body.data.entries[0].deviceModel, 'iPhone 14');
  assert.ok(branchRewards.body.data.entries[0].auctionRoundId);
  const recent = await request(app).get('/api/v1/rewards/customers?page=1').set(as(root));
  assert.equal(recent.status, 200, recent.text);
  assert.equal(recent.body.data.limit, 40);
  assert.ok(recent.body.data.items.some((row) => row.phone === '9876543210'));
  assert.equal(await RewardLedger.countDocuments({ type: 'earn' }), 1);
  const chain = (await request(app).get('/api/v1/chains').set(as(root))).body.data[0];
  const otherBranch = (await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.id, name: 'Koramangala', code: 'KOR', beneficiaryName: 'PAI', accountNumber: '123456784822', ifsc: 'HDFC0001234',
  })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({
    displayName: 'Neha', email: 'mgr-other@safedealz.test', password, branchId: otherBranch.id,
  });
  const otherManager = await auth('mgr-other@safedealz.test', 'store_manager', 'mobile');
  const otherView = await request(app).get('/api/v1/rewards/customers/9876543210').set(as(otherManager));
  assert.equal(otherView.status, 200, otherView.text);
  assert.equal(otherView.body.data.balances.length, 0);
  const originating = await request(app).get('/api/v1/rewards/customers/9876543210').set(as(manager));
  assert.equal(originating.body.data.balances.length, 1);
  const blockedScope = await request(app).post('/api/v1/rewards/policy').set(as(root)).send({
    redemptionScope: 'chain', chainRedemptionEnabled: true,
  });
  assert.equal(blockedScope.status, 409);
  const managerPolicy = await request(app).post('/api/v1/rewards/policy').set(as(manager)).send({
    earnPointsPerHundredRupees: 10, pointValuePaise: 50,
  });
  assert.equal(managerPolicy.status, 403);
  const published = await request(app).post('/api/v1/rewards/policy').set(as(root)).send({
    earnPointsPerHundredRupees: 10, pointValuePaise: 50, note: 'Keep branch-only snapshots',
  });
  assert.equal(published.status, 201, published.text);
  assert.equal(published.body.data.current.version, 2);
  assert.equal(published.body.data.current.redemptionScope, 'branch_only');
  const policy = await request(app).get('/api/v1/rewards/policy').set(as(root));
  assert.equal(policy.body.data.versions.length, 2);
});

test('P19 redemption OTP is bound, atomic and branch-scoped', async () => {
  const { manager, vendor, verified } = await seedPaidPath();
  const paid = await postWebhook(payoutEvent(verified.paymentInstruction.providerTransferId, 'payout.processed'));
  assert.equal(paid.status, 200, paid.text);
  const vendorStart = await request(app).post('/api/v1/rewards/redemptions').set(as(vendor)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-1', category: 'accessories', billAmountPaise: 50000, discountPaise: 10000,
  });
  assert.equal(vendorStart.status, 403);
  const overBill = await request(app).post('/api/v1/rewards/redemptions').set(as(manager)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-1', category: 'accessories', billAmountPaise: 5000, discountPaise: 10000,
  });
  assert.equal(overBill.status, 409);
  const tooMany = await request(app).post('/api/v1/rewards/redemptions').set(as(manager)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-1', category: 'accessories', billAmountPaise: 100000, discountPaise: 50000,
  });
  assert.equal(tooMany.status, 409);
  const badCategory = await request(app).post('/api/v1/rewards/redemptions').set(as(manager)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-1', category: 'grocery', billAmountPaise: 50000, discountPaise: 10000,
  });
  assert.equal(badCategory.status, 400);
  const started = await request(app).post('/api/v1/rewards/redemptions').set(as(manager)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-1', category: 'accessories', billAmountPaise: 50000, discountPaise: 10000,
  });
  assert.equal(started.status, 201, started.text);
  assert.equal(started.body.data.points, 200);
  assert.equal(started.body.data.otpRequired, true);
  const wrong = await request(app).post(`/api/v1/rewards/redemptions/${started.body.data.id}/confirm`).set(as(manager)).send({ otp: '000000' });
  assert.equal(wrong.status, 400);
  const confirmed = await request(app).post(`/api/v1/rewards/redemptions/${started.body.data.id}/confirm`).set(as(manager)).send({ otp: '123456' });
  assert.equal(confirmed.status, 200, confirmed.text);
  assert.equal(confirmed.body.data.status, 'redeemed');
  assert.equal(confirmed.body.data.remainingPoints, 600);
  const replay = await request(app).post(`/api/v1/rewards/redemptions/${started.body.data.id}/confirm`).set(as(manager)).send({ otp: '123456' });
  assert.equal(replay.status, 200);
  assert.equal(replay.body.data.replayed, true);
  const customer = await request(app).get('/api/v1/rewards/customers/9876543210').set(as(manager));
  assert.equal(customer.body.data.balances[0].pointsBalance, 600);
  assert.equal(customer.body.data.entries.filter((entry) => entry.type === 'redeem').length, 1);
  const listed = await request(app).get('/api/v1/rewards/redemptions').set(as(manager));
  assert.equal(listed.body.data.length, 1);
  const issuedAt = new Date('2026-09-14T12:00:00.000Z');
  setNow(issuedAt);
  const expiredStart = await request(app).post('/api/v1/rewards/redemptions').set(as(manager)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-2', category: 'accessories', billAmountPaise: 50000, discountPaise: 5000,
  });
  assert.equal(expiredStart.status, 201, expiredStart.text);
  setNow(addMinutes(issuedAt, 6));
  const expired = await request(app).post(`/api/v1/rewards/redemptions/${expiredStart.body.data.id}/confirm`).set(as(manager)).send({ otp: '123456' });
  assert.equal(expired.status, 409, expired.text);
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).get('/api/v1/chains').set(as(root))).body.data[0];
  const otherBranch = (await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.id, name: 'Whitefield', code: 'WFD', beneficiaryName: 'PAI', accountNumber: '123456784823', ifsc: 'HDFC0001234',
  })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({
    displayName: 'Ira', email: 'mgr-redeem-other@safedealz.test', password, branchId: otherBranch.id,
  });
  const otherManager = await auth('mgr-redeem-other@safedealz.test', 'store_manager', 'mobile');
  const otherStart = await request(app).post('/api/v1/rewards/redemptions').set(as(otherManager)).send({
    customerPhone: '9876543210', invoiceNumber: 'INV-3', category: 'accessories', billAmountPaise: 50000, discountPaise: 5000,
  });
  assert.equal(otherStart.status, 404);
});

test('P20 inbox is role-scoped, broadcasts target, retries do not duplicate', async () => {
  const anonymous = await request(app).get('/api/v1/notifications');
  assert.equal(anonymous.status, 401);
  const { root, manager, vendor, verified } = await seedPaidPath();
  const paidBody = payoutEvent(verified.paymentInstruction.providerTransferId, 'payout.processed');
  assert.equal((await postWebhook(paidBody)).status, 200);
  assert.equal((await postWebhook(paidBody)).status, 200);
  const vendorInbox = await request(app).get('/api/v1/notifications').set(as(vendor));
  assert.equal(vendorInbox.status, 200, vendorInbox.text);
  assert.equal(vendorInbox.body.data.length, 3);
  assert.equal(vendorInbox.body.data[0].category, 'pickup');
  const managerInbox = await request(app).get('/api/v1/notifications').set(as(manager));
  assert.equal(managerInbox.body.data.length, 3);
  assert.equal(managerInbox.body.data[0].category, 'payment');
  const pickup = await request(app).post(`/api/v1/deals/${verified.id}/pickup`).set(as(manager)).send({});
  assert.equal(pickup.status, 200, pickup.text);
  await request(app).post(`/api/v1/deals/${verified.id}/pickup`).set(as(manager)).send({});
  const afterPickup = await request(app).get('/api/v1/notifications').set(as(vendor));
  assert.equal(afterPickup.body.data.length, 4);
  const vendorBroadcast = await request(app).post('/api/v1/notifications/broadcasts').set(as(vendor)).send({
    audience: 'all_vendors', title: 'Hello', body: 'Vendor only',
  });
  assert.equal(vendorBroadcast.status, 403);
  const sent = await request(app).post('/api/v1/notifications/broadcasts').set(as(root)).send({
    audience: 'all_vendors', title: 'Pickup hours', body: 'Stores open 10–7.', category: 'broadcast',
  });
  assert.equal(sent.status, 201, sent.text);
  assert.equal(sent.body.data.delivered, 1);
  const vendorAfter = await request(app).get('/api/v1/notifications').set(as(vendor));
  assert.equal(vendorAfter.body.data.length, 5);
  const managerAfter = await request(app).get('/api/v1/notifications').set(as(manager));
  assert.equal(managerAfter.body.data.length, 3);
  const history = await request(app).get('/api/v1/notifications/history').set(as(root));
  assert.ok(history.body.data.length >= 3);
  const marked = await request(app).post(`/api/v1/notifications/${vendorInbox.body.data[0].id}/read`).set(as(vendor)).send({});
  assert.equal(marked.status, 200);
  assert.ok(marked.body.data.readAt);
  const crossRead = await request(app).post(`/api/v1/notifications/${managerInbox.body.data[0].id}/read`).set(as(vendor)).send({});
  assert.equal(crossRead.status, 403);
});
});
