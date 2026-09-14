import assert from 'node:assert/strict';
import { after, before, beforeEach, test } from 'node:test';
import request from 'supertest';
import { createApp } from '../app.js';
import { Account } from '../src/models/account.model.js';
import { LoginThrottle } from '../src/models/login-throttle.model.js';
import { Session } from '../src/models/session.model.js';
import { hashPassword, throttleKey } from '../src/utils/auth-crypto.js';
import { startMongoTestEnvironment } from './helpers/mongo-test-environment.js';

let stopMongo;
const app = createApp();
before(async () => { stopMongo = await startMongoTestEnvironment(); });
after(async () => { await stopMongo(); });
beforeEach(async () => {
  await Promise.all([Account.deleteMany({}), Session.deleteMany({}), LoginThrottle.deleteMany({})]);
  const passwordHash = await hashPassword('Correct horse 42!');
  await Account.create([{ email: 'admin@safedealz.test', passwordHash, role: 'super_admin', active: true }, { email: 'vendor@safedealz.test', passwordHash, role: 'vendor', active: true }]);
});

const login = (overrides = {}, ip = '10.0.0.1') => request(app).post('/api/v1/auth/login').set('x-forwarded-for', ip).send({
  email: 'admin@safedealz.test', password: 'Correct horse 42!', expectedRole: 'admin_portal', clientType: 'web', ...overrides,
});
const mobileLogin = () => login({ email: 'vendor@safedealz.test', expectedRole: 'vendor', clientType: 'mobile' }, '10.9.0.1');

test('logs in with the expected role and protects current account', async () => {
  const response = await login();
  assert.equal(response.status, 200);
  assert.equal(response.body.data.account.role, 'super_admin');
  assert.ok(response.body.data.csrfToken);
  const me = await request(app).get('/api/v1/auth/me').set('authorization', `Bearer ${response.body.data.accessToken}`);
  assert.equal(me.status, 200);
  assert.equal(me.body.data.email, 'admin@safedealz.test');
});

test('uses one generic response for unknown, wrong password and wrong role', async () => {
  for (const [index, body] of [
    { email: 'missing@safedealz.test' },
    { password: 'wrong' },
    {
      email: 'vendor@safedealz.test',
      expectedRole: 'store_manager',
      clientType: 'mobile',
    },
  ].entries()) {
    const response = await login(body, `10.0.1.${index + 1}`);
    assert.equal(response.status, 401);
    assert.equal(response.body.error.code, 'INVALID_CREDENTIALS');
  }
});

test('rejects login audiences used on the wrong client channel', async () => {
  const adminOnMobile = await login({ clientType: 'mobile' }, '10.5.0.1');
  assert.equal(adminOnMobile.status, 400);
  assert.equal(adminOnMobile.body.error.code, 'VALIDATION_ERROR');

  const vendorOnWeb = await login({
    email: 'vendor@safedealz.test', expectedRole: 'vendor', clientType: 'web',
  }, '10.5.0.2');
  assert.equal(vendorOnWeb.status, 400);
  assert.equal(vendorOnWeb.body.error.code, 'VALIDATION_ERROR');
});

test('throttles an account after five failures and includes Retry-After', async () => {
  for (let attempt = 0; attempt < 5; attempt += 1) {
    const response = await login({ password: 'wrong' }, `10.1.0.${attempt + 1}`);
    assert.equal(response.status, 401);
  }
  const blocked = await login({}, '10.1.1.1');
  assert.equal(blocked.status, 429);
  assert.equal(blocked.body.error.code, 'LOGIN_THROTTLED');
  assert.ok(Number(blocked.headers['retry-after']) > 0);
});

test('applies the shared Mongo-backed IP throttle to unknown accounts', async () => {
  const blockedUntil = new Date(Date.now() + 60_000);
  await LoginThrottle.create({ key: throttleKey('ip', '10.3.0.1'), kind: 'ip', count: 30, windowStartedAt: new Date(), blockedUntil, expiresAt: new Date(Date.now() + 120_000) });
  const response = await login({ email: 'unknown@safedealz.test' }, '10.3.0.1');
  assert.equal(response.status, 429);
  assert.equal(response.body.error.code, 'LOGIN_THROTTLED');
});

test('counts parallel account failures without losing increments', async () => {
  const responses = await Promise.all(Array.from({ length: 5 }, (_, index) => login({ password: 'wrong' }, `10.4.0.${index + 1}`)));
  assert.ok(responses.every((response) => response.status === 401));
  const blocked = await login({}, '10.4.1.1');
  assert.equal(blocked.status, 429);
});

test('rotates refresh tokens and revokes the family when an old token is replayed', async () => {
  const original = (await mobileLogin()).body.data;
  const rotated = await request(app).post('/api/v1/auth/refresh').send({ clientType: 'mobile', refreshToken: original.refreshToken });
  assert.equal(rotated.status, 200);
  assert.notEqual(rotated.body.data.refreshToken, original.refreshToken);
  const replay = await request(app).post('/api/v1/auth/refresh').send({ clientType: 'mobile', refreshToken: original.refreshToken });
  assert.equal(replay.status, 401);
  assert.equal(replay.body.error.code, 'SESSION_REUSED');
  const familyRevoked = await request(app).post('/api/v1/auth/refresh').send({ clientType: 'mobile', refreshToken: rotated.body.data.refreshToken });
  assert.equal(familyRevoked.status, 401);
});

test('allows only one of two parallel refreshes and leaves the family revoked', async () => {
  const original = (await mobileLogin()).body.data;
  const payload = { clientType: 'mobile', refreshToken: original.refreshToken };
  const responses = await Promise.all([request(app).post('/api/v1/auth/refresh').send(payload), request(app).post('/api/v1/auth/refresh').send(payload)]);
  assert.deepEqual(responses.map((item) => item.status).sort(), [200, 401]);
  const winner = responses.find((item) => item.status === 200);
  const final = await request(app).post('/api/v1/auth/refresh').send({ clientType: 'mobile', refreshToken: winner.body.data.refreshToken });
  assert.equal(final.status, 401);
});

test('rejects inactive accounts on login, refresh and protected requests', async () => {
  const session = (await mobileLogin()).body.data;
  await Account.updateOne({ email: 'vendor@safedealz.test' }, { active: false });
  const refreshResponse = await request(app).post('/api/v1/auth/refresh').send({ clientType: 'mobile', refreshToken: session.refreshToken });
  assert.equal(refreshResponse.body.error.code, 'ACCOUNT_INACTIVE');
  const me = await request(app).get('/api/v1/auth/me').set('authorization', `Bearer ${session.accessToken}`);
  assert.equal(me.body.error.code, 'ACCOUNT_INACTIVE');
  const inactiveLogin = await login({ email: 'vendor@safedealz.test', expectedRole: 'vendor', clientType: 'mobile' }, '10.2.0.1');
  assert.equal(inactiveLogin.body.error.code, 'ACCOUNT_INACTIVE');
});

test('uses HttpOnly refresh cookie and requires matching CSRF for web refresh', async () => {
  const agent = request.agent(app);
  const response = await agent.post('/api/v1/auth/login').send({ email: 'admin@safedealz.test', password: 'Correct horse 42!', expectedRole: 'admin_portal', clientType: 'web' });
  assert.equal(response.status, 200);
  assert.equal('refreshToken' in response.body.data, false);
  assert.ok(response.headers['set-cookie'].some((cookie) => cookie.includes('sd_refresh=') && cookie.includes('HttpOnly')));
  const denied = await agent.post('/api/v1/auth/refresh').send({ clientType: 'web' });
  assert.equal(denied.body.error.code, 'CSRF_INVALID');
  const refreshed = await agent.post('/api/v1/auth/refresh').set('x-csrf-token', response.body.data.csrfToken).send({ clientType: 'web' });
  assert.equal(refreshed.status, 200);
});

test('malformed refresh and access tokens never mint or expose a session', async () => {
  const refreshed = await request(app).post('/api/v1/auth/refresh').send({ clientType: 'mobile', refreshToken: 'malformed' });
  assert.equal(refreshed.status, 401);
  assert.equal(refreshed.body.error.code, 'SESSION_INVALID');
  const protectedResponse = await request(app).get('/api/v1/auth/me').set('authorization', 'Bearer malformed');
  assert.equal(protectedResponse.status, 401);
  assert.equal(protectedResponse.body.error.code, 'TOKEN_INVALID');
});
