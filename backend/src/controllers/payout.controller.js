import { handlePayoutWebhook, listVisiblePayments, readPayment, reconcilePayment, retryPayment } from '../services/payout.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getPayments = wrap(async (request, response) => send(response, await listVisiblePayments(request.auth.account)));
export const getPayment = wrap(async (request, response) => send(response, await readPayment(request.auth.account, request.params.id)));
export const postPaymentRetry = wrap(async (request, response) => send(response, await retryPayment(request.auth.account, request.params.id)));
export const postPaymentReconcile = wrap(async (request, response) => {
  const result = await reconcilePayment(request.auth.account, request.params.id, request.body);
  send(response, result.payment);
});
export const postPayoutWebhook = wrap(async (request, response) => {
  const raw = Buffer.isBuffer(request.body) ? request.body : Buffer.from(JSON.stringify(request.body || {}));
  const result = await handlePayoutWebhook(raw, request.get('x-payout-signature'));
  send(response, { status: result.instruction.status, paid: result.paid, replayed: result.replayed });
});
