import assert from 'node:assert/strict';
import test from 'node:test';

import { getFirebaseAdmin, getFirebaseMessaging } from '../src/config/firebase.js';

test('Firebase admin init does not throw when the namespaced SDK is unavailable', () => {
  const app = getFirebaseAdmin();
  assert.ok(app === null || typeof app === 'object');
  const messaging = getFirebaseMessaging();
  assert.ok(messaging === null || typeof messaging === 'object');
});
