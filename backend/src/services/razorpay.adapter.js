import { createHmac, randomUUID, timingSafeEqual } from 'node:crypto';
import { env } from '../config/env.js';

export const razorpayWebhookSecret = () => env.razorpay.webhookSecret || 'local-razorpay-webhook-secret-change-me-32';
export const razorpayKeyId = () => env.razorpay.keyId || 'rzp_test_local';

export const createRazorpayOrder = async ({ amountPaise, receipt }) => ({
  id: `order_test_${randomUUID().replaceAll('-', '').slice(0, 14)}`,
  amount: amountPaise,
  currency: 'INR',
  status: 'created',
  receipt,
  live: Boolean(env.razorpay.keyId && env.razorpay.keySecret),
});

export const verifyRazorpaySignature = (rawBody, signature) => {
  const expected = createHmac('sha256', razorpayWebhookSecret()).update(rawBody).digest('hex');
  const left = Buffer.from(expected, 'hex');
  const right = Buffer.from(String(signature || ''), 'hex');
  return left.length === right.length && left.length > 0 && timingSafeEqual(left, right);
};

export const signRazorpayWebhook = (rawBody) => createHmac('sha256', razorpayWebhookSecret()).update(rawBody).digest('hex');
