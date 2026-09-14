import assert from 'node:assert/strict';
import { createHash, randomUUID } from 'node:crypto';
import { after, before, beforeEach, test } from 'node:test';
import request from 'supertest';
import { createApp } from '../app.js';
import { Account } from '../src/models/account.model.js';
import { Branch } from '../src/models/branch.model.js';
import { Chain } from '../src/models/chain.model.js';
import { Device } from '../src/models/device.model.js';
import { DiagnosticImport } from '../src/models/diagnostic-import.model.js';
import { LoginThrottle } from '../src/models/login-throttle.model.js';
import { MediaObject } from '../src/models/media-object.model.js';
import { Session } from '../src/models/session.model.js';
import { StoreAssignment } from '../src/models/store-assignment.model.js';
import { Wallet } from '../src/models/wallet.model.js';
import { WalletLedger } from '../src/models/wallet-ledger.model.js';
import { WalletReservation } from '../src/models/wallet-reservation.model.js';
import { signDiagnosticPayload } from '../src/services/diagnostic.service.js';
import { hashPassword } from '../src/utils/auth-crypto.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
const app = createApp();
const password = 'Correct horse 42!';
before(async () => { stopMongo = await startMongoTestEnvironment(); });
after(async () => { await stopMongo(); });
beforeEach(async () => {
  await Promise.all([
    Account.deleteMany({}), Session.deleteMany({}), LoginThrottle.deleteMany({}), Chain.deleteMany({}),
    Branch.deleteMany({}), StoreAssignment.deleteMany({}), Device.deleteMany({}), MediaObject.deleteMany({}),
    DiagnosticImport.deleteMany({}), Wallet.deleteMany({}), WalletLedger.deleteMany({}), WalletReservation.deleteMany({}),
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
const answers = {
  sim1Working: 'yes', sim2Working: 'na', simConfig: 'single', touch: 'ok', screenReplacement: 'no', spots: 'no',
  lines: 'no', discoloration: 'no', scratches: 'no', paintBubbles: 'no', flicker: 'no', bodyScratches: 'no',
  dents: 'no', panel: 'ok', bent: 'no', accountLock: 'no', carrierLock: 'no', financeLock: 'no', box: 'no',
  bill: 'yes', charger: 'no', origin: 'india', deviceAge: '11 months or older', repair: 'none', wifi: 'ok',
  bluetooth: 'ok', vibration: 'ok', speakers: 'ok', buttons: 'ok', simTray: 'ok', gps: 'ok', proximity: 'ok',
  charging: 'ok', audioJack: 'na', microphone: 'ok', biometrics: 'ok', frontCamera: 'ok', backCamera: 'ok', cameraGlass: 'ok',
};

test('P03 Super Admin creates scoped Admin access and rejects cross-store reads', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI', contactName: 'Ramesh' });
  assert.equal(chain.status, 201, chain.text);
  const one = await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.body.data.id, name: 'Indiranagar', code: 'PAI-IND', beneficiaryName: 'PAI International',
    accountNumber: '123456784821', ifsc: 'HDFC0001234', city: 'Bengaluru',
  });
  const two = await request(app).post('/api/v1/branches').set(as(root)).send({
    chainId: chain.body.data.id, name: 'Jayanagar', code: 'PAI-JAY', beneficiaryName: 'PAI International',
    accountNumber: '123456784822', ifsc: 'HDFC0001234',
  });
  assert.equal(one.status, 201, one.text);
  const admin = await request(app).post('/api/v1/admins').set(as(root)).send({
    displayName: 'Ananya', email: 'ananya@safedealz.test', password, assignedBranchIds: [one.body.data.id],
  });
  assert.equal(admin.status, 201, admin.text);
  const forged = await request(app).post('/api/v1/admins').set(as(await auth('ananya@safedealz.test', 'admin_portal'))).send({
    displayName: 'Hacker', email: 'hack@safedealz.test', password, assignedBranchIds: [one.body.data.id],
  });
  assert.equal(forged.status, 403);
  const scoped = await request(app).get('/api/v1/branches').set(as(await auth('ananya@safedealz.test', 'admin_portal')));
  assert.equal(scoped.body.data.length, 1);
  assert.equal(scoped.body.data[0].id, one.body.data.id);
  const denied = await request(app).patch(`/api/v1/branches/${two.body.data.id}`).set(as(await auth('ananya@safedealz.test', 'admin_portal'))).send({ city: 'x' });
  assert.equal(denied.status, 403);
  assert.equal(denied.body.error.code, 'STORE_SCOPE_DENIED');
  await request(app).patch(`/api/v1/admins/${admin.body.data.id}`).set(as(root)).send({ assignedBranchIds: [] });
  const empty = await request(app).get('/api/v1/branches').set(as(await auth('ananya@safedealz.test', 'admin_portal')));
  assert.equal(empty.body.data.length, 0);
});

test('P04-P05 manager and vendor onboarding stay inside Admin scope and hide global wallet', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const a = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'A', code: 'A1', beneficiaryName: 'A', accountNumber: '111111111111', ifsc: 'HDFC0001111' })).body.data;
  const b = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'B', code: 'B1', beneficiaryName: 'B', accountNumber: '222222222222', ifsc: 'HDFC0002222' })).body.data;
  const admin = (await request(app).post('/api/v1/admins').set(as(root)).send({ displayName: 'Admin', email: 'scope-admin@safedealz.test', password, assignedBranchIds: [a.id] })).body.data;
  const adminToken = await auth('scope-admin@safedealz.test', 'admin_portal');
  const otherStore = await request(app).post('/api/v1/managers').set(as(adminToken)).send({ displayName: 'Other', email: 'x@safedealz.test', password, branchId: b.id });
  assert.equal(otherStore.status, 403);
  const manager = await request(app).post('/api/v1/managers').set(as(adminToken)).send({ displayName: 'Kavya', email: 'kavya@safedealz.test', password, branchId: a.id });
  assert.equal(manager.status, 201, manager.text);
  const mobile = await login('kavya@safedealz.test', 'store_manager', 'mobile');
  assert.equal(mobile.status, 200);
  const vendor = await request(app).post('/api/v1/vendors').set(as(adminToken)).send({ displayName: 'Uday', email: 'uday@safedealz.test', password, assignedBranchIds: [a.id] });
  assert.equal(vendor.status, 201, vendor.text);
  assert.equal(vendor.body.data.wallet.availablePaise, undefined);
  const listed = await request(app).get('/api/v1/vendors').set(as(adminToken));
  assert.equal(listed.body.data[0].wallet.availablePaise, undefined);
  const vendorToken = await auth('uday@safedealz.test', 'vendor', 'mobile');
  const stores = await request(app).get('/api/v1/assigned-stores').set(as(vendorToken));
  assert.equal(stores.status, 200);
  assert.equal(stores.body.data.length, 1);
  await request(app).patch(`/api/v1/managers/${manager.body.data.id}`).set(as(root)).send({ active: false });
  const inactive = await login('kavya@safedealz.test', 'store_manager', 'mobile');
  assert.equal(inactive.body.error.code, 'ACCOUNT_INACTIVE');
});

test('P06-P09 device identity, inspection evidence stubs, Apple bypass and QR import', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234' })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'mgr@safedealz.test', password, branchId: branch.id });
  const manager = await auth('mgr@safedealz.test', 'store_manager', 'mobile');
  const appleRam = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: branch.id, platform: 'apple', model: 'iPhone 14', imei1: '123456789012345', imei2: '123456789012346', storage: '128 GB', ram: '8 GB', batteryHealth: 90,
  });
  assert.equal(appleRam.status, 400);
  const android = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: branch.id, platform: 'android', model: 'Pixel 8', imei1: '353456789012345', imei2: '353456789012346', storage: '128 GB', ram: '8 GB',
  });
  assert.equal(android.status, 201, android.text);
  const checksum = createHash('sha256').update('media').digest('hex');
  for (const purpose of ['front', 'back', 'top', 'bottom', 'left', 'right', 'rotation']) {
    const signed = await request(app).post(`/api/v1/devices/${android.body.data.id}/media/sign`).set(as(manager)).send({ purpose, contentType: purpose === 'rotation' ? 'video/mp4' : 'image/jpeg', sizeBytes: 12, checksumSha256: checksum });
    assert.equal(signed.status, 201, signed.text);
    assert.equal(signed.body.data.upload.live, false);
    const done = await request(app).post(`/api/v1/devices/${android.body.data.id}/media/complete`).set(as(manager)).send({ objectKey: signed.body.data.objectKey, checksumSha256: checksum });
    assert.equal(done.status, 200, done.text);
  }
  const inspected = await request(app).put(`/api/v1/devices/${android.body.data.id}/inspection`).set(as(manager)).send({ answers, complete: true });
  assert.equal(inspected.status, 200, inspected.text);
  assert.equal(inspected.body.data.status, 'awaiting_diagnostics');
  const payload = {
    deviceId: android.body.data.id, imei1: '353456789012345', imei2: '353456789012346', nonce: randomUUID(),
    expiresAt: new Date(Date.now() + 60_000).toISOString(), touchPercent: 100, results: { wifi: 'passed' },
  };
  const imported = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ payload, signature: signDiagnosticPayload(payload) });
  assert.equal(imported.status, 201, imported.text);
  const replay = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ payload, signature: signDiagnosticPayload(payload) });
  assert.equal(replay.status, 409);
  const summary = await request(app).get(`/api/v1/devices/${android.body.data.id}`).set(as(manager));
  assert.equal(summary.body.data.auctionEligible, true);
  assert.equal(summary.body.data.diagnostic.status, undefined);
  assert.ok(summary.body.data.diagnostic.payload);
});

test('P10 wallet ledger refuses overspend and duplicate release credit', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234' })).body.data;
  const vendor = (await request(app).post('/api/v1/vendors').set(as(root)).send({ displayName: 'Uday', email: 'wallet@safedealz.test', password, assignedBranchIds: [branch.id] })).body.data;
  const credit = await request(app).post(`/api/v1/wallets/${vendor.id}/credits`).set(as(root)).send({ amountPaise: 10000, idempotencyKey: 'credit-1', reason: 'seed' });
  assert.equal(credit.status, 200, credit.text);
  const vendorToken = await auth('wallet@safedealz.test', 'vendor', 'mobile');
  const first = await request(app).post('/api/v1/wallets/reservations').set(as(vendorToken)).send({ amountPaise: 8000, idempotencyKey: 'hold-1', reason: 'bid' });
  const second = await request(app).post('/api/v1/wallets/reservations').set(as(vendorToken)).send({ amountPaise: 8000, idempotencyKey: 'hold-2', reason: 'bid' });
  const statuses = [first.status, second.status].sort();
  assert.deepEqual(statuses, [201, 409]);
  const held = first.status === 201 ? first : second;
  const releaseKey = first.status === 201 ? 'hold-1' : 'hold-2';
  assert.equal(held.status, 201);
  const released = await request(app).post('/api/v1/wallets/releases').set(as(vendorToken)).send({ idempotencyKey: releaseKey });
  assert.equal(released.status, 200, released.text);
  const replayed = await request(app).post('/api/v1/wallets/releases').set(as(vendorToken)).send({ idempotencyKey: releaseKey });
  assert.equal(replayed.body.data.replayed, true);
  const mine = await request(app).get('/api/v1/wallets/me').set(as(vendorToken));
  assert.equal(mine.body.data.availablePaise, 10000);
  assert.equal(mine.body.data.reservedPaise, 0);
  const parallel = await Promise.all(Array.from({ length: 2 }, (_, index) => request(app).post('/api/v1/wallets/reservations').set(as(vendorToken)).send({ amountPaise: 10000, idempotencyKey: `par-${index}`, reason: 'bid' })));
  assert.deepEqual(parallel.map((item) => item.status).sort(), [201, 409]);
});
