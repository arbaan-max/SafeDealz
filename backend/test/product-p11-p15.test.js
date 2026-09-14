import assert from 'node:assert/strict';
import { randomUUID } from 'node:crypto';
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
import { Session } from '../src/models/session.model.js';
import { StoreAssignment } from '../src/models/store-assignment.model.js';
import { Wallet } from '../src/models/wallet.model.js';
import { WalletLedger } from '../src/models/wallet-ledger.model.js';
import { WalletRecharge } from '../src/models/wallet-recharge.model.js';
import { WalletReservation } from '../src/models/wallet-reservation.model.js';
import { signRazorpayWebhook } from '../src/services/razorpay.adapter.js';
import { addMinutes, resetNow, setNow } from '../src/utils/clock.js';
import { hashPassword } from '../src/utils/auth-crypto.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
const app = createApp();
const password = 'Correct horse 42!';

describe('product P11-P15', { concurrency: false }, () => {
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

const seedVendor = async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234',
  })).body.data;
  const vendor = (await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Uday', email: 'recharge@safedealz.test', password, assignedBranchIds: [branch.id],
  })).body.data;
  const token = await auth('recharge@safedealz.test', 'vendor', 'mobile');
  return { root, branch, vendor, token };
};

const paymentEvent = (orderId, event, paymentId = `pay_${randomUUID().slice(0, 8)}`) => JSON.stringify({
  event,
  payload: { payment: { entity: { id: paymentId, order_id: orderId, amount: 50000, status: event === 'payment.captured' ? 'captured' : 'failed' } } },
});

test('P11 webhook HMAC, client ack never credits, capture credits once', async () => {
  const { token } = await seedVendor();
  const created = await request(app).post('/api/v1/wallets/recharges').set(as(token)).send({ amountPaise: 50000, idempotencyKey: 'rzp-1' });
  assert.equal(created.status, 201, created.text);
  const ack = await request(app).post(`/api/v1/wallets/recharges/${created.body.data.id}/acknowledge`).set(as(token)).send({});
  assert.equal(ack.status, 200, ack.text);
  const pending = await request(app).get('/api/v1/wallets/me').set(as(token));
  assert.equal(pending.body.data.availablePaise, 0);
  assert.equal(pending.body.data.processingPaise, 50000);
  const body = paymentEvent(created.body.data.orderId, 'payment.captured', 'pay_one');
  const bad = await request(app).post('/api/v1/webhooks/razorpay').set('x-razorpay-signature', 'deadbeef').set('content-type', 'application/json').send(body);
  assert.equal(bad.status, 400);
  const failedBody = paymentEvent(created.body.data.orderId, 'payment.failed', 'pay_fail');
  const failed = await request(app).post('/api/v1/webhooks/razorpay').set('x-razorpay-signature', signRazorpayWebhook(failedBody)).set('content-type', 'application/json').send(failedBody);
  assert.equal(failed.status, 200, failed.text);
  const stillEmpty = await request(app).get('/api/v1/wallets/me').set(as(token));
  assert.equal(stillEmpty.body.data.availablePaise, 0);
  const captured = await request(app).post('/api/v1/webhooks/razorpay').set('x-razorpay-signature', signRazorpayWebhook(body)).set('content-type', 'application/json').send(body);
  assert.equal(captured.status, 200, captured.text);
  assert.equal(captured.body.data.credited, true);
  const replay = await request(app).post('/api/v1/webhooks/razorpay').set('x-razorpay-signature', signRazorpayWebhook(body)).set('content-type', 'application/json').send(body);
  assert.equal(replay.body.data.replayed, true);
  const mine = await request(app).get('/api/v1/wallets/me').set(as(token));
  assert.equal(mine.body.data.availablePaise, 50000);
  assert.equal(mine.body.data.processingPaise, 0);
});

const seedAuction = async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234',
  })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'mgr-auc@safedealz.test', password, branchId: branch.id });
  await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Uday', email: 'vendor-auc@safedealz.test', password, assignedBranchIds: [branch.id],
  });
  const manager = await auth('mgr-auc@safedealz.test', 'store_manager', 'mobile');
  const managerAccount = await Account.findOne({ email: 'mgr-auc@safedealz.test' });
  const device = await Device.create({
    branchId: branch.id, createdByAccountId: managerAccount.id, platform: 'apple', model: 'iPhone 14',
    imei1: '012345678901234', imei2: '012345678901235', storage: '128 GB', batteryHealth: 91,
    status: 'ready_for_auction', inspection: { complete: true },
  });
  return { root, branch, manager, device };
};

test('P12 duplicate start blocked, settings apply to future rounds, close survives restart', async () => {
  const { root, manager, device } = await seedAuction();
  const started = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  assert.equal(started.status, 201, started.text);
  assert.equal(started.body.data.roundNumber, 1);
  assert.equal(started.body.data.biddingMinutes, 3);
  const duplicate = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  assert.equal(duplicate.status, 409);
  const firstCloses = new Date(started.body.data.closesAt).getTime();
  const settings = await request(app).patch('/api/v1/settings').set(as(root)).send({ biddingMinutes: 10, acceptanceMinutes: 15 });
  assert.equal(settings.status, 200, settings.text);
  const stillFirst = await request(app).get(`/api/v1/auctions/${started.body.data.id}`).set(as(manager));
  assert.equal(new Date(stillFirst.body.data.closesAt).getTime(), firstCloses);
  const cancelled = await request(app).post(`/api/v1/auctions/${started.body.data.id}/cancel`).set(as(manager)).send({ reason: 'Need a longer round' });
  assert.equal(cancelled.status, 200, cancelled.text);
  const second = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  assert.equal(second.status, 201, second.text);
  assert.equal(second.body.data.biddingMinutes, 10);
  assert.equal(second.body.data.roundNumber, 2);
  setNow(addMinutes(new Date(second.body.data.closesAt), 1));
  const tick = await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  assert.equal(tick.status, 200, tick.text);
  assert.equal(tick.body.data.closedCount, 1);
  const replay = await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  assert.equal(replay.body.data.closedCount, 0);
  const closed = await request(app).get(`/api/v1/auctions/${second.body.data.id}`).set(as(manager));
  assert.equal(closed.body.data.status, 'needs_reauction');
  assert.equal(closed.body.data.declineReason, 'No bids received');
  const events = await OutboxEvent.find({ topic: { $in: ['auction.started', 'auction.closed'] } });
  assert.ok(events.some((row) => row.topic === 'auction.started'));
  assert.ok(events.some((row) => row.topic === 'auction.closed'));
});

test('P13 fee bands, one bid per vendor, competitor amounts hidden', async () => {
  const { platformFee } = await import('../src/utils/auction-fee.js');
  assert.equal(platformFee(800000).feePaise, 64000);
  assert.equal(platformFee(2000000).rate, 0.08);
  assert.equal(platformFee(2000001).rate, 0.07);
  assert.equal(platformFee(3000000).rate, 0.07);
  assert.equal(platformFee(3000001).rate, 0.06);
  assert.equal(platformFee(3000001).feePaise, Math.round(3000001 * 0.06));
  const { root, manager, device, branch } = await seedAuction();
  await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Ravi', email: 'vendor-auc-2@safedealz.test', password, assignedBranchIds: [branch.id],
  });
  const vendor = await auth('vendor-auc@safedealz.test', 'vendor', 'mobile');
  const vendor2 = await auth('vendor-auc-2@safedealz.test', 'vendor', 'mobile');
  const vendorAccount = await Account.findOne({ email: 'vendor-auc@safedealz.test' });
  await request(app).post(`/api/v1/wallets/${vendorAccount.id}/credits`).set(as(root)).send({ amountPaise: 1000000, idempotencyKey: 'seed-v1' });
  const vendor2Account = await Account.findOne({ email: 'vendor-auc-2@safedealz.test' });
  await request(app).post(`/api/v1/wallets/${vendor2Account.id}/credits`).set(as(root)).send({ amountPaise: 50000, idempotencyKey: 'seed-v2' });
  const started = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  const poor = await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor2)).send({ amountPaise: 800000, idempotencyKey: 'bid-poor' });
  assert.equal(poor.status, 409);
  const bid = await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 800000, idempotencyKey: 'bid-1', basePaise: 900000, cosmeticDeductionPaise: 50000, batteryDeductionPaise: 50000,
  });
  assert.equal(bid.status, 201, bid.text);
  assert.equal(bid.body.data.feePaise, 64000);
  assert.equal(bid.body.data.totalPaise, 864000);
  const again = await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({ amountPaise: 900000, idempotencyKey: 'bid-2' });
  assert.equal(again.status, 409);
  const replay = await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({ amountPaise: 800000, idempotencyKey: 'bid-1' });
  assert.equal(replay.status, 200);
  const vendorView = await request(app).get(`/api/v1/auctions/${started.body.data.id}`).set(as(vendor2));
  assert.equal(vendorView.body.data.highestAmountPaise, undefined);
  assert.equal(vendorView.body.data.ownBid, undefined);
  const ownerView = await request(app).get(`/api/v1/auctions/${started.body.data.id}`).set(as(vendor));
  assert.equal(ownerView.body.data.ownBid.amountPaise, 800000);
  const managerView = await request(app).get(`/api/v1/auctions/${started.body.data.id}`).set(as(manager));
  assert.equal(managerView.body.data.highestAmountPaise, 800000);
  assert.equal(managerView.body.data.bidCount, 1);
  const wallet = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.equal(wallet.body.data.availablePaise, 136000);
  assert.equal(wallet.body.data.reservedPaise, 864000);
});

test('P14 winner is highest then earliest, losers released, decline other requires reason', async () => {
  const { root, manager, device, branch } = await seedAuction();
  await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Ravi', email: 'vendor-auc-2@safedealz.test', password, assignedBranchIds: [branch.id],
  });
  const vendor = await auth('vendor-auc@safedealz.test', 'vendor', 'mobile');
  const vendor2 = await auth('vendor-auc-2@safedealz.test', 'vendor', 'mobile');
  const vendorAccount = await Account.findOne({ email: 'vendor-auc@safedealz.test' });
  const vendor2Account = await Account.findOne({ email: 'vendor-auc-2@safedealz.test' });
  await request(app).post(`/api/v1/wallets/${vendorAccount.id}/credits`).set(as(root)).send({ amountPaise: 2000000, idempotencyKey: 'p14-v1' });
  await request(app).post(`/api/v1/wallets/${vendor2Account.id}/credits`).set(as(root)).send({ amountPaise: 2000000, idempotencyKey: 'p14-v2' });
  const started = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  const first = await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 1500000, idempotencyKey: 'p14-tie-1',
  });
  assert.equal(first.status, 201, first.text);
  const second = await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor2)).send({
    amountPaise: 1500000, idempotencyKey: 'p14-tie-2',
  });
  assert.equal(second.status, 201, second.text);
  setNow(addMinutes(new Date(started.body.data.closesAt), 1));
  const tick = await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  assert.equal(tick.status, 200, tick.text);
  assert.equal(tick.body.data.closedCount, 1);
  const offer = await request(app).get(`/api/v1/auctions/${started.body.data.id}`).set(as(manager));
  assert.equal(offer.body.data.status, 'awaiting_acceptance');
  assert.equal(offer.body.data.winnerVendorAccountId, String(vendorAccount.id));
  assert.equal(offer.body.data.winnerBid.amountPaise, 1500000);
  const loserWallet = await request(app).get('/api/v1/wallets/me').set(as(vendor2));
  assert.equal(loserWallet.body.data.reservedPaise, 0);
  assert.equal(loserWallet.body.data.availablePaise, 2000000);
  const winnerWallet = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.ok(winnerWallet.body.data.reservedPaise > 0);
  const other = await request(app).post(`/api/v1/auctions/${started.body.data.id}/decline`).set(as(manager)).send({ reasonCode: 'other' });
  assert.equal(other.status, 400);
  const declined = await request(app).post(`/api/v1/auctions/${started.body.data.id}/decline`).set(as(manager)).send({
    reasonCode: 'other', reason: 'Customer asked to wait',
  });
  assert.equal(declined.status, 200, declined.text);
  assert.equal(declined.body.data.status, 'needs_reauction');
  const afterDecline = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.equal(afterDecline.body.data.reservedPaise, 0);
  const replayDecline = await request(app).post(`/api/v1/auctions/${started.body.data.id}/decline`).set(as(manager)).send({
    reasonCode: 'customer_declined',
  });
  assert.equal(replayDecline.status, 409);

  const apple2 = await Device.create({
    branchId: branch.id, createdByAccountId: (await Account.findOne({ email: 'mgr-auc@safedealz.test' })).id,
    platform: 'apple', model: 'iPhone 13', imei1: '012345678901236', imei2: '012345678901237',
    storage: '128 GB', batteryHealth: 90, status: 'ready_for_auction', inspection: { complete: true },
  });
  const live2 = await request(app).post(`/api/v1/devices/${apple2.id}/auctions`).set(as(manager)).send({});
  await request(app).post(`/api/v1/auctions/${live2.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 800000, idempotencyKey: 'p14-rebid-1',
  });
  setNow(addMinutes(new Date(live2.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const missingExpect = await request(app).post(`/api/v1/auctions/${live2.body.data.id}/rebid`).set(as(manager)).send({});
  assert.equal(missingExpect.status, 400);
  const rebidded = await request(app).post(`/api/v1/auctions/${live2.body.data.id}/rebid`).set(as(manager)).send({
    expectedAmountPaise: 1700000,
  });
  assert.equal(rebidded.status, 200, rebidded.text);
  assert.equal(rebidded.body.data.previous.status, 'needs_reauction');
  assert.equal(rebidded.body.data.next.status, 'live');
  assert.equal(rebidded.body.data.next.roundNumber, 2);
  assert.equal(rebidded.body.data.next.expectedAmountPaise, 1700000);
  const duplicateRebid = await request(app).post(`/api/v1/auctions/${live2.body.data.id}/rebid`).set(as(manager)).send({
    expectedAmountPaise: 1800000,
  });
  assert.equal(duplicateRebid.status, 409);

  const apple3 = await Device.create({
    branchId: branch.id, createdByAccountId: (await Account.findOne({ email: 'mgr-auc@safedealz.test' })).id,
    platform: 'apple', model: 'iPhone 12', imei1: '012345678901238', imei2: '012345678901239',
    storage: '64 GB', batteryHealth: 88, status: 'ready_for_auction', inspection: { complete: true },
  });
  const live3 = await request(app).post(`/api/v1/devices/${apple3.id}/auctions`).set(as(manager)).send({});
  await request(app).post(`/api/v1/auctions/${live3.body.data.id}/bids`).set(as(vendor2)).send({
    amountPaise: 900000, idempotencyKey: 'p14-expire-1',
  });
  setNow(addMinutes(new Date(live3.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const ready = await request(app).get(`/api/v1/auctions/${live3.body.data.id}`).set(as(manager));
  setNow(addMinutes(new Date(ready.body.data.acceptanceDeadlineAt), 1));
  const expireTick = await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  assert.equal(expireTick.body.data.expiredCount, 1);
  const expired = await request(app).get(`/api/v1/auctions/${live3.body.data.id}`).set(as(manager));
  assert.equal(expired.body.data.status, 'needs_reauction');
  assert.equal(expired.body.data.declineReason, 'Acceptance expired');
  const expireReplay = await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  assert.equal(expireReplay.body.data.expiredCount, 0);
  const released = await request(app).get('/api/v1/wallets/me').set(as(vendor2));
  assert.equal(released.body.data.reservedPaise, 0);
});

test('P15 accept commits funds, KYC gates transfer, expiry race has one outcome', async () => {
  const { root, manager, device, branch } = await seedAuction();
  const vendor = await auth('vendor-auc@safedealz.test', 'vendor', 'mobile');
  const vendorAccount = await Account.findOne({ email: 'vendor-auc@safedealz.test' });
  await request(app).post(`/api/v1/wallets/${vendorAccount.id}/credits`).set(as(root)).send({ amountPaise: 2000000, idempotencyKey: 'p15-v1' });
  const started = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 800000, idempotencyKey: 'p15-bid-1',
  });
  setNow(addMinutes(new Date(started.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const accepted = await request(app).post(`/api/v1/auctions/${started.body.data.id}/accept`).set(as(manager)).send({});
  assert.equal(accepted.status, 201, accepted.text);
  assert.equal(accepted.body.data.status, 'awaiting_customer_verification');
  assert.equal(accepted.body.data.paymentInstruction.status, 'awaiting_customer_verification');
  assert.ok(accepted.body.data.paymentInstruction.accountNumberMasked.includes('4821'));
  const replay = await request(app).post(`/api/v1/auctions/${started.body.data.id}/accept`).set(as(manager)).send({});
  assert.equal(replay.status, 200);
  const wallet = await request(app).get('/api/v1/wallets/me').set(as(vendor));
  assert.equal(wallet.body.data.reservedPaise, 0);
  assert.equal(wallet.body.data.availablePaise, 2000000 - 864000);
  const vendorDeal = await request(app).get(`/api/v1/deals/${accepted.body.data.id}`).set(as(vendor));
  assert.equal(vendorDeal.status, 200, vendorDeal.text);
  assert.equal(vendorDeal.body.data.customerName, undefined);
  assert.equal(vendorDeal.body.data.purchasedDevice, undefined);
  const otp = await request(app).post(`/api/v1/deals/${accepted.body.data.id}/otp`).set(as(manager)).send({});
  assert.equal(otp.status, 200);
  const badOtp = await request(app).post(`/api/v1/deals/${accepted.body.data.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '000000', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'apple', model: 'iPhone 15', storage: '128 GB', imei1: '353456789012345', imei2: '353456789012346' },
  });
  assert.equal(badOtp.status, 400);
  const appleRam = await request(app).post(`/api/v1/deals/${accepted.body.data.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '123456', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'apple', model: 'iPhone 15', storage: '128 GB', ram: '6 GB', imei1: '353456789012345', imei2: '353456789012346' },
  });
  assert.equal(appleRam.status, 400);
  const sameImei = await request(app).post(`/api/v1/deals/${accepted.body.data.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '123456', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'android', model: 'Pixel 8', storage: '128 GB', ram: '8 GB', imei1: '353456789012345', imei2: '353456789012345' },
  });
  assert.equal(sameImei.status, 400);
  const verified = await request(app).post(`/api/v1/deals/${accepted.body.data.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '123456', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'android', model: 'Pixel 8', storage: '128 GB', ram: '8 GB', imei1: '353456789012345', imei2: '353456789012346' },
  });
  assert.equal(verified.status, 200, verified.text);
  assert.equal(verified.body.data.status, 'verified');
  assert.equal(verified.body.data.paymentInstruction.status, 'processing');
  assert.equal(verified.body.data.customerName, 'Anita');
  assert.equal(verified.body.data.purchasedDevice.ram, '8 GB');

  const apple4 = await Device.create({
    branchId: branch.id, createdByAccountId: (await Account.findOne({ email: 'mgr-auc@safedealz.test' })).id,
    platform: 'apple', model: 'iPhone SE', imei1: '012345678901240', imei2: '012345678901241',
    storage: '64 GB', batteryHealth: 87, status: 'ready_for_auction', inspection: { complete: true },
  });
  const live4 = await request(app).post(`/api/v1/devices/${apple4.id}/auctions`).set(as(manager)).send({});
  await request(app).post(`/api/v1/auctions/${live4.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 500000, idempotencyKey: 'p15-race-1',
  });
  setNow(addMinutes(new Date(live4.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const ready = await request(app).get(`/api/v1/auctions/${live4.body.data.id}`).set(as(manager));
  setNow(addMinutes(new Date(ready.body.data.acceptanceDeadlineAt), 1));
  const lateAccept = await request(app).post(`/api/v1/auctions/${live4.body.data.id}/accept`).set(as(manager)).send({});
  assert.equal(lateAccept.status, 409);
  const expired = await request(app).get(`/api/v1/auctions/${live4.body.data.id}`).set(as(manager));
  assert.equal(expired.body.data.status, 'needs_reauction');
});
});
