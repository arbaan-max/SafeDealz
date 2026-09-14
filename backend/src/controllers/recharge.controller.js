import { acknowledgeWalletRecharge, createWalletRecharge, handleRazorpayWebhook, presentRecharge, readWalletRecharge } from '../services/recharge.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const postWalletRecharge = wrap(async (request, response) => {
  const result = await createWalletRecharge(request.auth.account, request.body);
  send(response, presentRecharge(result.recharge), result.replayed ? 200 : 201);
});

export const getWalletRecharge = wrap(async (request, response) => {
  send(response, presentRecharge(await readWalletRecharge(request.auth.account, request.params.id)));
});

export const postWalletRechargeAck = wrap(async (request, response) => {
  send(response, presentRecharge(await acknowledgeWalletRecharge(request.auth.account, request.params.id)));
});

export const postRazorpayWebhook = wrap(async (request, response) => {
  const raw = Buffer.isBuffer(request.body) ? request.body : Buffer.from(JSON.stringify(request.body || {}));
  const result = await handleRazorpayWebhook(raw, request.get('x-razorpay-signature'));
  send(response, { status: result.recharge.status, credited: result.credited, replayed: result.replayed });
});
