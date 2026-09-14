import mongoose from 'mongoose';

const loginThrottleSchema = new mongoose.Schema({
  key: { type: String, required: true, unique: true },
  kind: { type: String, required: true, enum: ['account', 'ip'] },
  count: { type: Number, required: true, default: 0 },
  windowStartedAt: { type: Date, required: true },
  blockedUntil: Date,
  expiresAt: { type: Date, required: true, expires: 0 },
}, { versionKey: false });

export const LoginThrottle = mongoose.model('LoginThrottle', loginThrottleSchema);
