import { LoginThrottle } from '../models/login-throttle.model.js';
import { throttleKey } from '../utils/auth-crypto.js';
import { ApiError } from '../utils/api-error.js';

const WINDOW_MS = 15 * 60 * 1000;
const COOLDOWN_MS = 15 * 60 * 1000;
const limits = { account: 5, ip: 30 };
const now = () => new Date();

const getRecord = (kind, value) => LoginThrottle.findOne({ key: throttleKey(kind, value) });
export const assertLoginAllowed = async (email, ip) => {
  const records = await Promise.all([getRecord('account', email), getRecord('ip', ip)]);
  const blocked = records.find((record) => record?.blockedUntil && record.blockedUntil > now());
  if (blocked) {
    const retryAfter = Math.max(1, Math.ceil((blocked.blockedUntil.getTime() - Date.now()) / 1000));
    throw new ApiError(429, 'LOGIN_THROTTLED', 'Too many login attempts. Try again later.', { retryAfter });
  }
};

const recordFailure = async (kind, value) => {
  const key = throttleKey(kind, value);
  const currentTime = now();
  const cutoff = new Date(currentTime.getTime() - WINDOW_MS);
  await LoginThrottle.updateOne({ key, windowStartedAt: { $lte: cutoff } }, { $set: { count: 0, windowStartedAt: currentTime, blockedUntil: null } });
  const record = await LoginThrottle.findOneAndUpdate(
    { key },
    { $setOnInsert: { kind, windowStartedAt: currentTime }, $inc: { count: 1 }, $set: { expiresAt: new Date(currentTime.getTime() + WINDOW_MS + COOLDOWN_MS) } },
    { upsert: true, returnDocument: 'after' },
  );
  if (record.count >= limits[kind]) {
    await LoginThrottle.updateOne({ _id: record.id, blockedUntil: null }, { $set: { blockedUntil: new Date(currentTime.getTime() + COOLDOWN_MS) } });
  }
};

export const recordLoginFailure = (email, ip) => Promise.all([recordFailure('account', email), recordFailure('ip', ip)]);
export const clearAccountFailures = (email) => LoginThrottle.deleteOne({ key: throttleKey('account', email) });
