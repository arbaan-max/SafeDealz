import { createHmac, timingSafeEqual } from 'node:crypto';
import { env } from '../config/env.js';

const transfers = new Map();

export const payoutWebhookSecret = () => env.payout.webhookSecret || 'local-payout-webhook-secret-change-me-32';

export const createStorePayout = ({ idempotencyKey, amountPaise }) => {
  for (const existing of transfers.values()) {
    if (existing.idempotencyKey === idempotencyKey) return existing;
  }
  const id = `payout_test_${String(idempotencyKey).replaceAll(/[^a-zA-Z0-9]/g, '').slice(-18)}`;
  const transfer = { id, idempotencyKey, amountPaise, status: 'processing' };
  transfers.set(id, transfer);
  return transfer;
};

export const getStorePayout = (id) => transfers.get(id) || null;

export const verifyPayoutSignature = (rawBody, signature) => {
  const expected = createHmac('sha256', payoutWebhookSecret()).update(rawBody).digest('hex');
  const left = Buffer.from(expected, 'hex');
  const right = Buffer.from(String(signature || ''), 'hex');
  return left.length === right.length && left.length > 0 && timingSafeEqual(left, right);
};

export const signPayoutWebhook = (rawBody) => createHmac('sha256', payoutWebhookSecret()).update(rawBody).digest('hex');
