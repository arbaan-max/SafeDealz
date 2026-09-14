import { creditWallet, listAdminWallets, readVendorWallet, releaseReservation, reserveFunds } from '../services/wallet.service.js';
import { ApiError } from '../utils/api-error.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getMyWallet = wrap(async (request, response) => send(response, await readVendorWallet(request.auth.account)));
export const getVendorWallet = wrap(async (request, response) => send(response, await readVendorWallet(request.auth.account, request.params.vendorId)));
export const getWallets = wrap(async (request, response) => send(response, await listAdminWallets(request.auth.account)));
export const postWalletCredit = wrap(async (request, response) => {
  if (request.auth.account.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can post ledger credits in development.');
  const result = await creditWallet({
    vendorAccountId: request.params.vendorId,
    amountPaise: request.body.amountPaise,
    idempotencyKey: request.body.idempotencyKey,
    reason: request.body.reason || 'manual_credit',
    actorId: request.auth.account.id,
    referenceId: request.body.referenceId,
  });
  send(response, { availablePaise: result.wallet.availablePaise, reservedPaise: result.wallet.reservedPaise, replayed: result.replayed });
});
export const postWalletReserve = wrap(async (request, response) => {
  const vendorAccountId = request.auth.account.role === 'vendor' ? request.auth.account.id : request.body.vendorAccountId;
  const result = await reserveFunds({
    vendorAccountId,
    amountPaise: request.body.amountPaise,
    idempotencyKey: request.body.idempotencyKey,
    reason: request.body.reason || 'hold',
    referenceId: request.body.referenceId,
    actorId: request.auth.account.id,
  });
  send(response, { reservationId: String(result.reservation.id), availablePaise: result.wallet.availablePaise, reservedPaise: result.wallet.reservedPaise, replayed: result.replayed }, 201);
});
export const postWalletRelease = wrap(async (request, response) => {
  const result = await releaseReservation({ idempotencyKey: request.body.idempotencyKey, actorId: request.auth.account.id });
  send(response, { availablePaise: result.wallet.availablePaise, reservedPaise: result.wallet.reservedPaise, status: result.reservation.status, replayed: result.replayed });
});
