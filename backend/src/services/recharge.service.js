import { createOutboxEvent } from '../repositories/outbox-event.repository.js';
import { createRecharge, findRechargeById, findRechargeByKey, findRechargeByOrderId, saveRecharge } from '../repositories/wallet-recharge.repository.js';
import { ApiError } from '../utils/api-error.js';
import { creditWallet } from './wallet.service.js';
import { createRazorpayOrder, razorpayKeyId, verifyRazorpaySignature } from './razorpay.adapter.js';

const publicRecharge = (recharge) => ({
  id: String(recharge.id),
  vendorAccountId: String(recharge.vendorAccountId),
  amountPaise: recharge.amountPaise,
  orderId: recharge.orderId,
  paymentId: recharge.paymentId || '',
  status: recharge.status,
  keyId: razorpayKeyId(),
  clientAcknowledged: recharge.clientAcknowledged,
});

export const createWalletRecharge = async (actor, body) => {
  if (actor.role !== 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Only a vendor can start a wallet recharge.');
  const amountPaise = Number.parseInt(body.amountPaise, 10);
  if (!Number.isInteger(amountPaise) || amountPaise < 100) throw new ApiError(400, 'VALIDATION_ERROR', 'Recharge amount must be at least 100 paise.');
  const idempotencyKey = typeof body.idempotencyKey === 'string' ? body.idempotencyKey.trim() : '';
  if (!idempotencyKey) throw new ApiError(400, 'VALIDATION_ERROR', 'An idempotency key is required.');
  const existing = await findRechargeByKey(idempotencyKey);
  if (existing) return { recharge: existing, replayed: true };
  const order = await createRazorpayOrder({ amountPaise, receipt: idempotencyKey });
  const recharge = await createRecharge({
    vendorAccountId: actor.id, amountPaise, orderId: order.id, status: 'pending', idempotencyKey,
  });
  return { recharge, replayed: false };
};

export const readWalletRecharge = async (actor, id) => {
  const recharge = await findRechargeById(id);
  if (!recharge) throw new ApiError(404, 'NOT_FOUND', 'Recharge was not found.');
  if (actor.role === 'vendor' && String(recharge.vendorAccountId) !== String(actor.id)) {
    throw new ApiError(403, 'FORBIDDEN', 'You can only view your own recharge.');
  }
  return recharge;
};

export const acknowledgeWalletRecharge = async (actor, id) => {
  const recharge = await readWalletRecharge(actor, id);
  recharge.clientAcknowledged = true;
  await saveRecharge(recharge);
  return recharge;
};

export const presentRecharge = publicRecharge;

export const handleRazorpayWebhook = async (rawBody, signature) => {
  if (!verifyRazorpaySignature(rawBody, signature)) throw new ApiError(400, 'INVALID_SIGNATURE', 'Razorpay signature was rejected.');
  let event;
  try { event = JSON.parse(rawBody.toString()); } catch { throw new ApiError(400, 'VALIDATION_ERROR', 'Webhook payload was not valid JSON.'); }
  const payment = event?.payload?.payment?.entity || {};
  const orderId = payment.order_id;
  const paymentId = payment.id;
  const eventName = event.event || '';
  if (!orderId) throw new ApiError(400, 'VALIDATION_ERROR', 'Webhook is missing an order id.');
  const recharge = await findRechargeByOrderId(orderId);
  if (!recharge) throw new ApiError(404, 'NOT_FOUND', 'No recharge matches this order.');
  recharge.lastEvent = eventName;
  if (eventName === 'payment.failed') {
    if (recharge.status !== 'confirmed') recharge.status = 'failed';
    await saveRecharge(recharge);
    return { recharge, credited: false, replayed: recharge.status === 'confirmed' };
  }
  if (eventName !== 'payment.captured') {
    await saveRecharge(recharge);
    return { recharge, credited: false, replayed: false };
  }
  if (recharge.status === 'confirmed') return { recharge, credited: false, replayed: true };
  if (paymentId) recharge.paymentId = paymentId;
  const moved = await creditWallet({
    vendorAccountId: recharge.vendorAccountId,
    amountPaise: recharge.amountPaise,
    idempotencyKey: `razorpay:${paymentId || recharge.orderId}`,
    reason: 'razorpay_recharge',
    referenceId: recharge.orderId,
  });
  recharge.status = 'confirmed';
  await saveRecharge(recharge);
  if (!moved.replayed) {
    await createOutboxEvent({
      topic: 'wallet.recharge.confirmed',
      aggregateType: 'wallet_recharge',
      aggregateId: String(recharge.id),
      idempotencyKey: `recharge-confirmed:${recharge.id}`,
      payload: { rechargeId: String(recharge.id), orderId: recharge.orderId, paymentId: paymentId || '' },
    });
  }
  return { recharge, credited: !moved.replayed, replayed: moved.replayed };
};
