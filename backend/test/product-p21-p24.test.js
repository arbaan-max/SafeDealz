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
import { Notification } from '../src/models/notification.model.js';
import { OutboxEvent } from '../src/models/outbox-event.model.js';
import { PaymentInstruction } from '../src/models/payment-instruction.model.js';
import { PlatformSettings } from '../src/models/platform-settings.model.js';
import { RewardAccount } from '../src/models/reward-account.model.js';
import { RewardLedger } from '../src/models/reward-ledger.model.js';
import { RewardPolicy } from '../src/models/reward-policy.model.js';
import { RewardRedemption } from '../src/models/reward-redemption.model.js';
import { Session } from '../src/models/session.model.js';
import { StoreAssignment } from '../src/models/store-assignment.model.js';
import { SupportTicket } from '../src/models/support-ticket.model.js';
import { Wallet } from '../src/models/wallet.model.js';
import { WalletLedger } from '../src/models/wallet-ledger.model.js';
import { WalletRecharge } from '../src/models/wallet-recharge.model.js';
import { WalletReservation } from '../src/models/wallet-reservation.model.js';
import { signPayoutWebhook } from '../src/services/payout.adapter.js';
import { addMinutes, resetNow, setNow } from '../src/utils/clock.js';
import { hashPassword } from '../src/utils/auth-crypto.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
const app = createApp();
const password = 'Correct horse 42!';
const checksum = 'a'.repeat(64);

describe('product P21-P24', { concurrency: false }, () => {
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
    RewardAccount.deleteMany({}), RewardLedger.deleteMany({}), RewardPolicy.deleteMany({}), RewardRedemption.deleteMany({}),
    Notification.deleteMany({}), SupportTicket.deleteMany({}),
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

const seedDeal = async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234',
  })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'mgr-pay@safedealz.test', password, branchId: branch.id });
  await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Uday', email: 'vendor-pay@safedealz.test', password, assignedBranchIds: [branch.id],
  });
  await request(app).post('/api/v1/vendors').set(as(root)).send({
    displayName: 'Other', email: 'vendor-other@safedealz.test', password, assignedBranchIds: [branch.id],
  });
  const manager = await auth('mgr-pay@safedealz.test', 'store_manager', 'mobile');
  const vendor = await auth('vendor-pay@safedealz.test', 'vendor', 'mobile');
  const otherVendor = await auth('vendor-other@safedealz.test', 'vendor', 'mobile');
  const vendorAccount = await Account.findOne({ email: 'vendor-pay@safedealz.test' });
  const managerAccount = await Account.findOne({ email: 'mgr-pay@safedealz.test' });
  await request(app).post(`/api/v1/wallets/${vendorAccount.id}/credits`).set(as(root)).send({ amountPaise: 2000000, idempotencyKey: 'p21-seed' });
  const device = await Device.create({
    branchId: branch.id, createdByAccountId: managerAccount.id, platform: 'apple', model: 'iPhone 14',
    imei1: '012345678901234', imei2: '012345678901235', storage: '128 GB', batteryHealth: 91,
    status: 'ready_for_auction', inspection: { complete: true },
  });
  const started = await request(app).post(`/api/v1/devices/${device.id}/auctions`).set(as(manager)).send({});
  await request(app).post(`/api/v1/auctions/${started.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 800000, idempotencyKey: 'p21-bid-1',
  });
  setNow(addMinutes(new Date(started.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const accepted = await request(app).post(`/api/v1/auctions/${started.body.data.id}/accept`).set(as(manager)).send({});
  return { root, manager, vendor, otherVendor, device, accepted: accepted.body.data, branch };
};

test('P21 tickets are owner-scoped, admins cannot create, attachments stay private', async () => {
  const { root, manager, vendor, otherVendor, accepted } = await seedDeal();
  const unauth = await request(app).get('/api/v1/tickets');
  assert.equal(unauth.status, 401);
  const adminCreate = await request(app).post('/api/v1/tickets').set(as(root)).send({
    subjectType: 'deal', subjectId: accepted.id, reasonCode: 'payment_issue', notes: 'Admin should not create this.',
  });
  assert.equal(adminCreate.status, 403);
  const created = await request(app).post('/api/v1/tickets').set(as(vendor)).send({
    subjectType: 'deal', subjectId: accepted.id, reasonCode: 'pickup_issue', notes: 'Store hours are unclear.',
    idempotencyKey: 'ticket-v1',
  });
  assert.equal(created.status, 201, created.text);
  assert.equal(created.body.data.status, 'open');
  assert.equal(created.body.data.creatorRole, 'vendor');
  const replay = await request(app).post('/api/v1/tickets').set(as(vendor)).send({
    subjectType: 'deal', subjectId: accepted.id, reasonCode: 'pickup_issue', notes: 'Store hours are unclear.',
    idempotencyKey: 'ticket-v1',
  });
  assert.equal(replay.status, 200);
  assert.equal(replay.body.data.id, created.body.data.id);
  const duplicate = await request(app).post('/api/v1/tickets').set(as(vendor)).send({
    subjectType: 'deal', subjectId: accepted.id, reasonCode: 'pickup_issue', notes: 'Still unclear.',
  });
  assert.equal(duplicate.status, 409);
  const otherRead = await request(app).get(`/api/v1/tickets/${created.body.data.id}`).set(as(otherVendor));
  assert.equal(otherRead.status, 403);
  const managerList = await request(app).get('/api/v1/tickets').set(as(manager));
  assert.equal(managerList.status, 200);
  assert.equal(managerList.body.data.length, 0);
  const vendorList = await request(app).get('/api/v1/tickets').set(as(vendor));
  assert.equal(vendorList.body.data.length, 1);
  const sign = await request(app).post(`/api/v1/tickets/${created.body.data.id}/attachments/sign`).set(as(vendor)).send({
    contentType: 'image/jpeg', sizeBytes: 1200, checksumSha256: checksum,
  });
  assert.equal(sign.status, 200, sign.text);
  const complete = await request(app).post(`/api/v1/tickets/${created.body.data.id}/attachments/complete`).set(as(vendor)).send({
    objectKey: sign.body.data.objectKey, checksumSha256: checksum,
  });
  assert.equal(complete.status, 200, complete.text);
  const attachmentId = complete.body.data.attachments[0].id;
  const otherDownload = await request(app).post(`/api/v1/tickets/${created.body.data.id}/attachments/${attachmentId}/download`).set(as(otherVendor)).send({});
  assert.equal(otherDownload.status, 403);
  const ownDownload = await request(app).post(`/api/v1/tickets/${created.body.data.id}/attachments/${attachmentId}/download`).set(as(vendor)).send({});
  assert.equal(ownDownload.status, 200, ownDownload.text);
  assert.ok(ownDownload.body.data.download.url);
  const rootAccount = await Account.findOne({ email: 'root@safedealz.test' });
  const assigned = await request(app).post(`/api/v1/tickets/${created.body.data.id}/assign`).set(as(root)).send({ ownerAccountId: String(rootAccount.id) });
  assert.equal(assigned.status, 200, assigned.text);
  assert.equal(assigned.body.data.status, 'investigating');
  const resolved = await request(app).post(`/api/v1/tickets/${created.body.data.id}/status`).set(as(root)).send({
    status: 'resolved', note: 'Store hours posted on the pickup screen.',
  });
  assert.equal(resolved.status, 200, resolved.text);
  assert.equal(resolved.body.data.status, 'resolved');
  const afterResolve = await request(app).post('/api/v1/tickets').set(as(vendor)).send({
    subjectType: 'deal', subjectId: accepted.id, reasonCode: 'pickup_issue', notes: 'New question after close.',
  });
  assert.equal(afterResolve.status, 201, afterResolve.text);
  await request(app).post('/api/v1/admins').set(as(root)).send({
    displayName: 'Empty', email: 'empty-admin@safedealz.test', password, assignedBranchIds: [],
  });
  const emptyAdmin = await auth('empty-admin@safedealz.test', 'admin_portal');
  const emptyRead = await request(app).get(`/api/v1/tickets/${created.body.data.id}`).set(as(emptyAdmin));
  assert.equal(emptyRead.status, 403);
});

test('P22 overview, reports, audit and sessions stay scoped and immutable', async () => {
  const { root, vendor, accepted, manager } = await seedDeal();
  const verified = await request(app).post(`/api/v1/deals/${accepted.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '123456', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'android', model: 'Pixel 8', storage: '128 GB', ram: '8 GB', imei1: '353456789012345', imei2: '353456789012346' },
  });
  assert.equal(verified.status, 200, verified.text);
  const paidBody = JSON.stringify({ event: 'payout.processed', payload: { id: verified.body.data.paymentInstruction.providerTransferId, status: 'processed' } });
  const paid = await request(app).post('/api/v1/webhooks/payout')
    .set('x-payout-signature', signPayoutWebhook(paidBody))
    .set('content-type', 'application/json')
    .send(paidBody);
  assert.equal(paid.status, 200, paid.text);
  const overview = await request(app).get('/api/v1/overview').set(as(root));
  assert.equal(overview.status, 200, overview.text);
  assert.equal(JSON.stringify(overview.body.data).toLowerCase().includes('sms'), false);
  assert.ok(Array.isArray(overview.body.data.needsAttention));
  const vendorOverview = await request(app).get('/api/v1/overview').set(as(vendor));
  assert.equal(vendorOverview.status, 403);
  const reports = await request(app).get('/api/v1/reports').set(as(root));
  assert.equal(reports.status, 200, reports.text);
  assert.equal(reports.body.data.paidValuePaise, 800000);
  assert.equal(reports.body.data.billingReconciliation.paidValuePaise, 800000);
  const exported = await request(app).post('/api/v1/reports/export').set(as(root)).send({});
  assert.equal(exported.status, 200, exported.text);
  assert.match(exported.body.data.csv, /paidValuePaise,800000/);
  const vendorExport = await request(app).post('/api/v1/reports/export').set(as(vendor)).send({});
  assert.equal(vendorExport.status, 403);
  const audit = await request(app).get('/api/v1/audit').set(as(root));
  assert.equal(audit.status, 200);
  assert.ok(audit.body.data.length >= 1);
  const mutate = await request(app).patch(`/api/v1/audit/${audit.body.data[0].id}`).set(as(root)).send({ action: 'edited' });
  assert.equal(mutate.status, 404);
  const sessions = await request(app).get('/api/v1/auth/sessions').set(as(root));
  assert.equal(sessions.status, 200);
  assert.ok(sessions.body.data.some((row) => row.current));
  const current = sessions.body.data.find((row) => row.current);
  const revokeCurrent = await request(app).post(`/api/v1/auth/sessions/${current.id}/revoke`).set(as(root)).send({});
  assert.equal(revokeCurrent.status, 409);
  const performance = await request(app).get('/api/v1/performance').set(as(vendor));
  assert.equal(performance.status, 200, performance.text);
  assert.equal(performance.body.data.bids, 1);
  const adminPerf = await request(app).get('/api/v1/performance').set(as(root));
  assert.equal(adminPerf.status, 403);
});

test('P23 unauthenticated oversight routes stay closed', async () => {
  for (const path of ['/overview', '/reports', '/audit']) {
    const response = await request(app).get(`/api/v1${path}`);
    assert.equal(response.status, 401);
  }
});

test('P24 intake-to-rewards, rebid, funds, deactivation, unknown payout and duplicate events', async () => {
  const { root, manager, vendor, otherVendor, accepted, branch } = await seedDeal();
  const managerAccount = await Account.findOne({ email: 'mgr-pay@safedealz.test' });
  const otherAccount = await Account.findOne({ email: 'vendor-other@safedealz.test' });
  const device2 = await Device.create({
    branchId: branch.id, createdByAccountId: managerAccount.id, platform: 'apple', model: 'iPhone 13',
    imei1: '012345678901240', imei2: '012345678901241', storage: '128 GB', batteryHealth: 90,
    status: 'ready_for_auction', inspection: { complete: true },
  });
  const live = await request(app).post(`/api/v1/devices/${device2.id}/auctions`).set(as(manager)).send({});
  assert.equal(live.status, 201, live.text);
  const poorBid = await request(app).post(`/api/v1/auctions/${live.body.data.id}/bids`).set(as(otherVendor)).send({
    amountPaise: 800000, idempotencyKey: 'p24-poor',
  });
  assert.equal(poorBid.status, 409);
  assert.equal(poorBid.body.error.code, 'INSUFFICIENT_FUNDS');
  const deactivated = await request(app).patch(`/api/v1/vendors/${otherAccount.id}`).set(as(root)).send({ active: false });
  assert.equal(deactivated.status, 200, deactivated.text);
  const inactiveBid = await request(app).post(`/api/v1/auctions/${live.body.data.id}/bids`).set(as(otherVendor)).send({
    amountPaise: 10000, idempotencyKey: 'p24-inactive',
  });
  assert.equal(inactiveBid.status, 401);
  assert.equal(inactiveBid.body.error.code, 'ACCOUNT_INACTIVE');
  const fundedBid = await request(app).post(`/api/v1/auctions/${live.body.data.id}/bids`).set(as(vendor)).send({
    amountPaise: 700000, idempotencyKey: 'p24-rebid-bid',
  });
  assert.equal(fundedBid.status, 201, fundedBid.text);
  setNow(addMinutes(new Date(live.body.data.closesAt), 1));
  await request(app).post('/api/v1/auctions/tick').set(as(manager)).send({});
  const rebidded = await request(app).post(`/api/v1/auctions/${live.body.data.id}/rebid`).set(as(manager)).send({
    expectedAmountPaise: 1700000,
  });
  assert.equal(rebidded.status, 200, rebidded.text);
  assert.equal(rebidded.body.data.next.status, 'live');
  const duplicateRebid = await request(app).post(`/api/v1/auctions/${live.body.data.id}/rebid`).set(as(manager)).send({
    expectedAmountPaise: 1800000,
  });
  assert.equal(duplicateRebid.status, 409);

  const verified = await request(app).post(`/api/v1/deals/${accepted.id}/verify`).set(as(manager)).send({
    customerName: 'Anita', customerPhone: '9876543210', otp: '123456', idCaptured: true, portraitCaptured: true,
    purchasedDevice: { platform: 'android', model: 'Pixel 8', storage: '128 GB', ram: '8 GB', imei1: '353456789012345', imei2: '353456789012346' },
  });
  assert.equal(verified.status, 200, verified.text);
  const transferId = verified.body.data.paymentInstruction.providerTransferId;
  const paymentId = verified.body.data.paymentInstruction.id;
  const unknownBody = JSON.stringify({ event: 'payout.unknown', payload: { id: transferId, status: 'unknown' } });
  const unknown = await request(app).post('/api/v1/webhooks/payout')
    .set('x-payout-signature', signPayoutWebhook(unknownBody))
    .set('content-type', 'application/json')
    .send(unknownBody);
  assert.equal(unknown.status, 200, unknown.text);
  const blocked = await request(app).post(`/api/v1/payments/${paymentId}/retry`).set(as(manager)).send({});
  assert.equal(blocked.status, 409);
  const reconciled = await request(app).post(`/api/v1/payments/${paymentId}/reconcile`).set(as(root)).send({ outcome: 'failed' });
  assert.equal(reconciled.status, 200, reconciled.text);
  const retried = await request(app).post(`/api/v1/payments/${paymentId}/retry`).set(as(manager)).send({});
  assert.equal(retried.status, 200, retried.text);
  const paidBody = JSON.stringify({ event: 'payout.processed', payload: { id: retried.body.data.providerTransferId, status: 'processed' } });
  const paid = await request(app).post('/api/v1/webhooks/payout')
    .set('x-payout-signature', signPayoutWebhook(paidBody))
    .set('content-type', 'application/json')
    .send(paidBody);
  assert.equal(paid.status, 200, paid.text);
  const replay = await request(app).post('/api/v1/webhooks/payout')
    .set('x-payout-signature', signPayoutWebhook(paidBody))
    .set('content-type', 'application/json')
    .send(paidBody);
  assert.equal(replay.status, 200);
  assert.equal(replay.body.data.replayed, true);
  const pickup = await request(app).post(`/api/v1/deals/${accepted.id}/pickup`).set(as(manager)).send({});
  assert.equal(pickup.status, 200, pickup.text);
  assert.equal(pickup.body.data.status, 'picked_up');
  const rewards = await request(app).get('/api/v1/rewards/overview').set(as(root));
  assert.equal(rewards.status, 200, rewards.text);
  assert.equal(rewards.body.data.totals.issuedPoints, 800);
});
});
