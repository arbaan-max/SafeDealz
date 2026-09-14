import assert from 'node:assert/strict';
import { createHash, randomUUID } from 'node:crypto';
import { after, before, beforeEach, describe, test } from 'node:test';
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
import { sampleInspectionAnswers } from '../src/services/inspection-catalog.js';
import { hashPassword } from '../src/utils/auth-crypto.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
const app = createApp();
const password = 'Correct horse 42!';
const answers = sampleInspectionAnswers('android');

describe('product P03-P10', { concurrency: false }, () => {
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

test('P04 Store Manager onboarding stays inside Admin scope and supports mobile login', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const a = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'A', code: 'A1', beneficiaryName: 'A', accountNumber: '111111111111', ifsc: 'HDFC0001111' })).body.data;
  const b = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'B', code: 'B1', beneficiaryName: 'B', accountNumber: '222222222222', ifsc: 'HDFC0002222' })).body.data;
  await request(app).post('/api/v1/admins').set(as(root)).send({ displayName: 'Admin', email: 'scope-admin@safedealz.test', password, assignedBranchIds: [a.id] });
  const adminToken = await auth('scope-admin@safedealz.test', 'admin_portal');
  const otherStore = await request(app).post('/api/v1/managers').set(as(adminToken)).send({ displayName: 'Other', email: 'x@safedealz.test', password, branchId: b.id });
  assert.equal(otherStore.status, 403);
  assert.equal(otherStore.body.error.code, 'STORE_SCOPE_DENIED');
  const manager = await request(app).post('/api/v1/managers').set(as(adminToken)).send({ displayName: 'Kavya', email: 'kavya@safedealz.test', password, branchId: a.id });
  assert.equal(manager.status, 201, manager.text);
  assert.equal(manager.body.data.branchId, a.id);
  const peer = await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Arjun', email: 'arjun@safedealz.test', password, branchId: a.id });
  assert.equal(peer.status, 201, peer.text);
  const outsider = await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Bhavya', email: 'bhavya@safedealz.test', password, branchId: b.id });
  assert.equal(outsider.status, 201, outsider.text);
  const listed = await request(app).get('/api/v1/managers').set(as(adminToken));
  assert.equal(listed.status, 200);
  assert.equal(listed.body.data.length, 2);
  assert.ok(listed.body.data.every((item) => item.branchId === a.id));
  const mobile = await login('kavya@safedealz.test', 'store_manager', 'mobile');
  assert.equal(mobile.status, 200);
  const managerToken = mobile.body.data.accessToken;
  const me = await request(app).get('/api/v1/auth/me').set(as(managerToken));
  assert.deepEqual(me.body.data.assignedBranchIds, [a.id]);
  const managerBranches = await request(app).get('/api/v1/branches').set(as(managerToken));
  assert.equal(managerBranches.status, 200, managerBranches.text);
  assert.equal(managerBranches.body.data.length, 1);
  assert.equal(managerBranches.body.data[0].id, a.id);
  assert.equal(managerBranches.body.data[0].accountNumberMasked, '•••• 1111');
  assert.equal(managerBranches.body.data[0].accountNumber, undefined);
  const escalateManager = await request(app).post('/api/v1/managers').set(as(managerToken)).send({ displayName: 'Hack', email: 'hack-mgr@safedealz.test', password, branchId: a.id });
  assert.equal(escalateManager.status, 403);
  const escalateAdmin = await request(app).post('/api/v1/admins').set(as(managerToken)).send({ displayName: 'Hack', email: 'hack-admin@safedealz.test', password, assignedBranchIds: [a.id] });
  assert.equal(escalateAdmin.status, 403);
  const crossPatch = await request(app).patch(`/api/v1/managers/${outsider.body.data.id}`).set(as(adminToken)).send({ displayName: 'Nope' });
  assert.equal(crossPatch.status, 403);
  assert.equal(crossPatch.body.error.code, 'STORE_SCOPE_DENIED');
  const reassign = await request(app).patch(`/api/v1/managers/${manager.body.data.id}`).set(as(adminToken)).send({ branchId: b.id });
  assert.equal(reassign.status, 403);
  const revoked = await request(app).patch(`/api/v1/managers/${manager.body.data.id}`).set(as(adminToken)).send({ revokeSessions: true });
  assert.equal(revoked.status, 200);
  const afterRevoke = await request(app).post('/api/v1/auth/refresh').send({ refreshToken: mobile.body.data.refreshToken, clientType: 'mobile' });
  assert.equal(afterRevoke.status, 401);
  await request(app).patch(`/api/v1/managers/${peer.body.data.id}`).set(as(root)).send({ active: false });
  const inactive = await login('arjun@safedealz.test', 'store_manager', 'mobile');
  assert.equal(inactive.status, 401);
  assert.equal(inactive.body.error.code, 'ACCOUNT_INACTIVE');
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

test('P05 vendor onboarding keeps one wallet, hides balances from Admin, and links without leaking stores', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const pai = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const sang = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'Sangeetha', code: 'SANG' })).body.data;
  const a = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: pai.id, name: 'Indiranagar', code: 'PAI-IND', beneficiaryName: 'PAI', accountNumber: '111111111111', ifsc: 'HDFC0001111' })).body.data;
  const b = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: sang.id, name: 'Koramangala', code: 'SANG-KOR', beneficiaryName: 'Sangeetha', accountNumber: '222222222222', ifsc: 'HDFC0002222' })).body.data;
  await request(app).post('/api/v1/admins').set(as(root)).send({ displayName: 'AdminA', email: 'admin-a@safedealz.test', password, assignedBranchIds: [a.id] });
  await request(app).post('/api/v1/admins').set(as(root)).send({ displayName: 'AdminB', email: 'admin-b@safedealz.test', password, assignedBranchIds: [b.id] });
  const adminA = await auth('admin-a@safedealz.test', 'admin_portal');
  const adminB = await auth('admin-b@safedealz.test', 'admin_portal');
  const denied = await request(app).post('/api/v1/vendors').set(as(adminA)).send({ displayName: 'Uday', email: 'uday@safedealz.test', password, assignedBranchIds: [b.id] });
  assert.equal(denied.status, 403);
  const created = await request(app).post('/api/v1/vendors').set(as(adminA)).send({ displayName: 'Uday Mobiles', email: 'uday@safedealz.test', password, assignedBranchIds: [a.id] });
  assert.equal(created.status, 201, created.text);
  assert.equal(created.body.data.wallet.availablePaise, undefined);
  assert.equal(created.body.data.assignedBranchIds.length, 1);
  const duplicate = await request(app).post('/api/v1/vendors').set(as(adminB)).send({ displayName: 'Uday', email: 'uday@safedealz.test', password, assignedBranchIds: [b.id] });
  assert.equal(duplicate.status, 409);
  assert.equal(duplicate.body.error.code, 'CONFLICT');
  assert.equal(duplicate.body.error.message.includes('Indiranagar') || duplicate.body.error.message.includes(a.id), false);
  const unknownLink = await request(app).post('/api/v1/vendors/links').set(as(adminB)).send({ email: 'missing@safedealz.test', assignedBranchIds: [b.id] });
  const managerLink = await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Mgr', email: 'mgr-link@safedealz.test', password, branchId: a.id });
  assert.equal(managerLink.status, 201);
  const roleLink = await request(app).post('/api/v1/vendors/links').set(as(adminA)).send({ email: 'mgr-link@safedealz.test', assignedBranchIds: [a.id] });
  assert.equal(unknownLink.status, 400);
  assert.equal(unknownLink.body.error.code, 'VENDOR_LINK_UNAVAILABLE');
  assert.equal(roleLink.status, 400);
  assert.equal(roleLink.body.error.code, 'VENDOR_LINK_UNAVAILABLE');
  const linked = await request(app).post('/api/v1/vendors/links').set(as(adminB)).send({ email: 'uday@safedealz.test', assignedBranchIds: [b.id] });
  assert.equal(linked.status, 200, linked.text);
  assert.deepEqual(linked.body.data.assignedBranchIds.sort(), [b.id].sort());
  assert.equal(linked.body.data.assignedBranchIds.includes(a.id), false);
  const listedA = await request(app).get('/api/v1/vendors').set(as(adminA));
  assert.equal(listedA.body.data.length, 1);
  assert.deepEqual(listedA.body.data[0].assignedBranchIds, [a.id]);
  assert.equal(listedA.body.data[0].wallet.availablePaise, undefined);
  const statusDenied = await request(app).patch(`/api/v1/vendors/${created.body.data.id}`).set(as(adminA)).send({ active: false });
  assert.equal(statusDenied.status, 403);
  const passwordDenied = await request(app).patch(`/api/v1/vendors/${created.body.data.id}`).set(as(adminA)).send({ password });
  assert.equal(passwordDenied.status, 403);
  const adminWallet = await request(app).get(`/api/v1/wallets/${created.body.data.id}`).set(as(adminA));
  assert.equal(adminWallet.status, 200);
  assert.equal(adminWallet.body.data.availablePaise, undefined);
  const rootWallet = await request(app).get(`/api/v1/wallets/${created.body.data.id}`).set(as(root));
  assert.equal(rootWallet.body.data.availablePaise, 0);
  const vendorToken = await auth('uday@safedealz.test', 'vendor', 'mobile');
  const stores = await request(app).get('/api/v1/assigned-stores').set(as(vendorToken));
  assert.equal(stores.status, 200);
  assert.equal(stores.body.data.length, 2);
  assert.ok(stores.body.data.every((store) => store.accountNumber === undefined && store.ifsc === undefined && store.beneficiaryName === undefined));
  const names = stores.body.data.map((store) => store.chainName).sort();
  assert.deepEqual(names, ['PAI', 'Sangeetha']);
});

test('P06 device identity validates Apple/Android fields, IMEI uniqueness and store scope', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const a = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'A', code: 'A1', beneficiaryName: 'A', accountNumber: '111111111111', ifsc: 'HDFC0001111' })).body.data;
  const b = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'B', code: 'B1', beneficiaryName: 'B', accountNumber: '222222222222', ifsc: 'HDFC0002222' })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'kavya-dev@safedealz.test', password, branchId: a.id });
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Other', email: 'other-dev@safedealz.test', password, branchId: b.id });
  await request(app).post('/api/v1/vendors').set(as(root)).send({ displayName: 'Uday', email: 'vendor-dev@safedealz.test', password, assignedBranchIds: [a.id] });
  const manager = await auth('kavya-dev@safedealz.test', 'store_manager', 'mobile');
  const other = await auth('other-dev@safedealz.test', 'store_manager', 'mobile');
  const vendor = await auth('vendor-dev@safedealz.test', 'vendor', 'mobile');
  const appleRam = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: a.id, platform: 'apple', model: 'iPhone 14', imei1: '123456789012345', imei2: '123456789012346', storage: '128 GB', ram: '8 GB', batteryHealth: 90,
  });
  assert.equal(appleRam.status, 400);
  const sameImei = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: a.id, platform: 'apple', model: 'iPhone 14', imei1: '012345678901234', imei2: '012345678901234', storage: '128 GB', batteryHealth: 91,
  });
  assert.equal(sameImei.status, 400);
  const apple = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: a.id, platform: 'apple', model: 'iPhone 14', imei1: '012345678901234', imei2: '012345678901235', storage: '128 GB', batteryHealth: 91,
  });
  assert.equal(apple.status, 201, apple.text);
  assert.equal(apple.body.data.imei1, '012345678901234');
  assert.equal(apple.body.data.ram, '');
  const android = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: a.id, platform: 'android', model: 'Pixel 8', imei1: '353456789012345', imei2: '353456789012346', storage: '128 GB', ram: '8 GB',
  });
  assert.equal(android.status, 201, android.text);
  const swapped = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: a.id, platform: 'android', model: 'Pixel 7', imei1: '353456789012399', imei2: '353456789012345', storage: '256 GB', ram: '6 GB',
  });
  assert.equal(swapped.status, 409);
  const otherStore = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: b.id, platform: 'android', model: 'Pixel 8', imei1: '353456789012355', imei2: '353456789012356', storage: '128 GB', ram: '8 GB',
  });
  assert.equal(otherStore.status, 403);
  const vendorCreate = await request(app).post('/api/v1/devices').set(as(vendor)).send({
    branchId: a.id, platform: 'android', model: 'Pixel 8', imei1: '353456789012365', imei2: '353456789012366', storage: '128 GB', ram: '8 GB',
  });
  assert.equal(vendorCreate.status, 403);
  const vendorList = await request(app).get('/api/v1/devices').set(as(vendor));
  assert.equal(vendorList.status, 200);
  assert.equal(vendorList.body.data.length, 0);
  const injected = await request(app).get('/api/v1/devices').set(as(manager)).query('status[$ne]=draft');
  assert.equal(injected.status, 400);
  const drafts = await request(app).get('/api/v1/devices').set(as(manager)).query({ status: 'draft' });
  assert.equal(drafts.body.data.length, 2);
  const peek = await request(app).get(`/api/v1/devices/${apple.body.data.id}`).set(as(other));
  assert.equal(peek.status, 403);
  const resumed = await request(app).patch(`/api/v1/devices/${apple.body.data.id}`).set(as(manager)).send({ model: 'iPhone 14 Pro' });
  assert.equal(resumed.status, 200);
  assert.equal(resumed.body.data.model, 'iPhone 14 Pro');
});

test('P07 inspection and evidence enforce answers, bill, captures and media grants', async () => {
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const a = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'A', code: 'A1', beneficiaryName: 'A', accountNumber: '111111111111', ifsc: 'HDFC0001111' })).body.data;
  const b = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'B', code: 'B1', beneficiaryName: 'B', accountNumber: '222222222222', ifsc: 'HDFC0002222' })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'insp@safedealz.test', password, branchId: a.id });
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Other', email: 'insp-other@safedealz.test', password, branchId: b.id });
  await request(app).post('/api/v1/vendors').set(as(root)).send({ displayName: 'Uday', email: 'insp-vendor@safedealz.test', password, assignedBranchIds: [a.id] });
  const manager = await auth('insp@safedealz.test', 'store_manager', 'mobile');
  const other = await auth('insp-other@safedealz.test', 'store_manager', 'mobile');
  const vendor = await auth('insp-vendor@safedealz.test', 'vendor', 'mobile');
  const apple = (await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: a.id, platform: 'apple', model: 'iPhone 14', imei1: '012345678901211', imei2: '012345678901212', storage: '128 GB', batteryHealth: 91,
  })).body.data;
  const rgb = await request(app).put(`/api/v1/devices/${apple.id}/inspection`).set(as(manager)).send({ answers: { whiteScreen: 'ok' } });
  assert.equal(rgb.status, 400);
  const partial = await request(app).put(`/api/v1/devices/${apple.id}/inspection`).set(as(manager)).send({ answers: { sim1: 'Yes' }, complete: false });
  assert.equal(partial.status, 200, partial.text);
  assert.equal(partial.body.data.status, 'inspecting');
  const unfinished = await request(app).put(`/api/v1/devices/${apple.id}/inspection`).set(as(manager)).send({ answers: sampleInspectionAnswers('apple'), complete: true });
  assert.equal(unfinished.status, 400);
  const young = sampleInspectionAnswers('apple');
  young.deviceAge = 'Below 3 months';
  young.bill = 'No';
  const checksum = createHash('sha256').update('media').digest('hex');
  for (const purpose of ['front', 'back', 'top', 'bottom', 'left', 'right', 'rotation']) {
    const signed = await request(app).post(`/api/v1/devices/${apple.id}/media/sign`).set(as(manager)).send({
      purpose, contentType: purpose === 'rotation' ? 'video/mp4' : 'image/jpeg', sizeBytes: 12, checksumSha256: checksum,
    });
    assert.equal(signed.status, 201, signed.text);
    assert.equal(signed.body.data.upload.live, false);
    const done = await request(app).post(`/api/v1/devices/${apple.id}/media/complete`).set(as(manager)).send({ objectKey: signed.body.data.objectKey, checksumSha256: checksum });
    assert.equal(done.status, 200, done.text);
  }
  const noBill = await request(app).put(`/api/v1/devices/${apple.id}/inspection`).set(as(manager)).send({ answers: young, complete: true });
  assert.equal(noBill.status, 400);
  const finished = await request(app).put(`/api/v1/devices/${apple.id}/inspection`).set(as(manager)).send({ answers: sampleInspectionAnswers('apple'), complete: true });
  assert.equal(finished.status, 200, finished.text);
  assert.equal(finished.body.data.status, 'ready_for_auction');
  const resume = await request(app).put(`/api/v1/devices/${apple.id}/inspection`).set(as(manager)).send({ answers: { sim1: 'No' }, complete: false });
  assert.equal(resume.status, 200);
  assert.equal(resume.body.data.inspection.answers.sim1, 'No');
  const vendorSign = await request(app).post(`/api/v1/devices/${apple.id}/media/sign`).set(as(vendor)).send({
    purpose: 'front', contentType: 'image/jpeg', sizeBytes: 12, checksumSha256: checksum,
  });
  assert.equal(vendorSign.status, 403);
  const signed = await request(app).post(`/api/v1/devices/${apple.id}/media/sign`).set(as(manager)).send({
    purpose: 'front', contentType: 'image/jpeg', sizeBytes: 12, checksumSha256: checksum,
  });
  const mismatch = await request(app).post(`/api/v1/devices/${apple.id}/media/complete`).set(as(manager)).send({
    objectKey: signed.body.data.objectKey, checksumSha256: createHash('sha256').update('other').digest('hex'),
  });
  assert.equal(mismatch.status, 400);
  await MediaObject.updateOne({ objectKey: signed.body.data.objectKey }, { grantExpiresAt: new Date(Date.now() - 1000) });
  const expired = await request(app).post(`/api/v1/devices/${apple.id}/media/complete`).set(as(manager)).send({
    objectKey: signed.body.data.objectKey, checksumSha256: checksum,
  });
  assert.equal(expired.status, 400);
  assert.equal(expired.body.error.code, 'SIGNATURE_EXPIRED');
  const retake = await request(app).post(`/api/v1/devices/${apple.id}/media/sign`).set(as(manager)).send({
    purpose: 'front', contentType: 'image/jpeg', sizeBytes: 12, checksumSha256: checksum,
  });
  assert.notEqual(retake.body.data.objectKey, signed.body.data.objectKey);
  await request(app).post(`/api/v1/devices/${apple.id}/media/complete`).set(as(manager)).send({
    objectKey: retake.body.data.objectKey, checksumSha256: checksum,
  });
  const download = await request(app).post(`/api/v1/devices/${apple.id}/media/download`).set(as(other)).send({ objectKey: retake.body.data.objectKey });
  assert.equal(download.status, 403);
});

test('P08 catalog lists come from the backend module and reject unknown storage', async () => {
  const catalog = await request(app).get('/api/v1/catalog');
  assert.equal(catalog.status, 200);
  assert.ok(catalog.body.data.storages.includes('128 GB'));
  assert.ok(catalog.body.data.rams.includes('8 GB'));
  assert.ok(catalog.body.data.inspectionFields.some((field) => field.key === 'sim1'));
  const root = await auth('root@safedealz.test', 'admin_portal');
  const chain = (await request(app).post('/api/v1/chains').set(as(root)).send({ name: 'PAI', code: 'PAI' })).body.data;
  const branch = (await request(app).post('/api/v1/branches').set(as(root)).send({ chainId: chain.id, name: 'Indiranagar', code: 'IND', beneficiaryName: 'PAI', accountNumber: '123456784821', ifsc: 'HDFC0001234' })).body.data;
  await request(app).post('/api/v1/managers').set(as(root)).send({ displayName: 'Kavya', email: 'mgr-cat@safedealz.test', password, branchId: branch.id });
  const manager = await auth('mgr-cat@safedealz.test', 'store_manager', 'mobile');
  const unknown = await request(app).post('/api/v1/devices').set(as(manager)).send({
    branchId: branch.id, platform: 'android', model: 'Pixel 8', imei1: '353456789012301', imei2: '353456789012302', storage: '2 TB', ram: '8 GB',
  });
  assert.equal(unknown.status, 400);
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
    imei1: '353456789012345', imei2: '353456789012346', nonce: randomUUID(),
    expiresAt: new Date(Date.now() + 60_000).toISOString(), touchPercent: 100, results: { wifi: 'passed' },
  };
  const imported = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ deviceId: android.body.data.id, payload, signature: signDiagnosticPayload(payload) });
  assert.equal(imported.status, 201, imported.text);
  const replay = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ deviceId: android.body.data.id, payload, signature: signDiagnosticPayload(payload) });
  assert.equal(replay.status, 409);
  const expired = { ...payload, nonce: randomUUID(), expiresAt: new Date(Date.now() - 1000).toISOString() };
  const expiredRes = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ deviceId: android.body.data.id, payload: expired, signature: signDiagnosticPayload(expired) });
  assert.equal(expiredRes.status, 400);
  const mismatched = { ...payload, nonce: randomUUID(), imei1: '353456789012399' };
  const mismatchRes = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ deviceId: android.body.data.id, payload: mismatched, signature: signDiagnosticPayload(mismatched) });
  assert.equal(mismatchRes.status, 400);
  const altered = await request(app).post('/api/v1/diagnostic-imports').set(as(manager)).send({ deviceId: android.body.data.id, payload, signature: 'deadbeef' });
  assert.equal(altered.status, 400);
  await request(app).post('/api/v1/vendors').set(as(root)).send({ displayName: 'Uday', email: 'qr-vendor@safedealz.test', password, assignedBranchIds: [branch.id] });
  const vendor = await auth('qr-vendor@safedealz.test', 'vendor', 'mobile');
  const vendorImport = await request(app).post('/api/v1/diagnostic-imports').set(as(vendor)).send({ deviceId: android.body.data.id, payload, signature: signDiagnosticPayload(payload) });
  assert.equal(vendorImport.status, 403);
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
  assert.equal(mine.body.data.processingPaise, 0);
  assert.equal(mine.body.data.ledger[0].availableAfterPaise, mine.body.data.availablePaise);
  assert.equal(mine.body.data.ledger[0].reservedAfterPaise, mine.body.data.reservedPaise);
  const parallel = await Promise.all(Array.from({ length: 2 }, (_, index) => request(app).post('/api/v1/wallets/reservations').set(as(vendorToken)).send({ amountPaise: 10000, idempotencyKey: `par-${index}`, reason: 'bid' })));
  assert.deepEqual(parallel.map((item) => item.status).sort(), [201, 409]);
  const replayCredit = await request(app).post(`/api/v1/wallets/${vendor.id}/credits`).set(as(root)).send({ amountPaise: 10000, idempotencyKey: 'credit-1', reason: 'seed' });
  assert.equal(replayCredit.body.data.replayed, true);
  const heldAgain = await request(app).get('/api/v1/wallets/me').set(as(vendorToken));
  assert.equal(heldAgain.body.data.availablePaise, 0);
  assert.equal(heldAgain.body.data.reservedPaise, 10000);
  assert.equal(heldAgain.body.data.reservations.length, 1);
  await request(app).post('/api/v1/admins').set(as(root)).send({ displayName: 'Ananya', email: 'wallet-admin@safedealz.test', password, assignedBranchIds: [branch.id] });
  const admin = await auth('wallet-admin@safedealz.test', 'admin_portal');
  const adminWallet = await request(app).get(`/api/v1/wallets/${vendor.id}`).set(as(admin));
  assert.equal(adminWallet.status, 200, adminWallet.text);
  assert.equal(adminWallet.body.data.availablePaise, undefined);
  assert.deepEqual(adminWallet.body.data.ledger, []);
  await request(app).post('/api/v1/vendors').set(as(root)).send({ displayName: 'Other', email: 'wallet-other@safedealz.test', password, assignedBranchIds: [branch.id] });
  const other = await auth('wallet-other@safedealz.test', 'vendor', 'mobile');
  const stolen = await request(app).get(`/api/v1/wallets/${vendor.id}`).set(as(other));
  assert.equal(stolen.status, 403);
  const stolenRelease = await request(app).post('/api/v1/wallets/releases').set(as(other)).send({ idempotencyKey: releaseKey });
  assert.equal(stolenRelease.status, 403);
});
});
