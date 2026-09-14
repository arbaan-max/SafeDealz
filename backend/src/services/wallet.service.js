import { Wallet } from '../models/wallet.model.js';
import { createLedgerEntry, createReservation, createWallet, findLedgerByKey, findReservationByKey, findWalletById, findWalletByVendor, listLedger, listWallets, saveReservation, saveWallet } from '../repositories/wallet.repository.js';
import { findAccountById } from '../repositories/account.repository.js';
import { listAssignments } from '../repositories/store-assignment.repository.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { publicWallet } from '../utils/presenters.js';
import { loadScope } from './scope.service.js';

const ensureWallet = async (vendorAccountId) => {
  const existing = await findWalletByVendor(vendorAccountId);
  if (existing) return existing;
  return createWallet({ vendorAccountId, availablePaise: 0, reservedPaise: 0 });
};

const persistMove = async ({ wallet, type, amountPaise, idempotencyKey, reason, actorId, referenceId, apply }) => {
  const existing = await findLedgerByKey(idempotencyKey);
  if (existing) return { wallet, ledger: existing, replayed: true };
  apply(wallet);
  if (wallet.availablePaise < 0 || wallet.reservedPaise < 0) throw new ApiError(409, 'INSUFFICIENT_FUNDS', 'Available wallet balance is too low.');
  try {
    await saveWallet(wallet);
    const ledger = await createLedgerEntry({
      walletId: wallet.id, vendorAccountId: wallet.vendorAccountId, type, amountPaise,
      availableAfterPaise: wallet.availablePaise, reservedAfterPaise: wallet.reservedPaise,
      idempotencyKey, reason, actorId, referenceId: referenceId || '',
    });
    return { wallet, ledger, replayed: false };
  } catch (error) {
    if (duplicateError(error)) return { wallet: await findWalletById(wallet.id), ledger: await findLedgerByKey(idempotencyKey), replayed: true };
    throw error;
  }
};

export const creditWallet = async ({ vendorAccountId, amountPaise, idempotencyKey, reason, actorId, referenceId }) => {
  if (!Number.isInteger(amountPaise) || amountPaise < 1) throw new ApiError(400, 'VALIDATION_ERROR', 'Credit amount must be a positive integer in paise.');
  const wallet = await ensureWallet(vendorAccountId);
  return persistMove({
    wallet, type: 'credit', amountPaise, idempotencyKey, reason, actorId, referenceId,
    apply: (current) => { current.availablePaise += amountPaise; },
  });
};

export const reserveFunds = async ({ vendorAccountId, amountPaise, idempotencyKey, reason, referenceId, actorId }) => {
  if (!Number.isInteger(amountPaise) || amountPaise < 1) throw new ApiError(400, 'VALIDATION_ERROR', 'Reservation amount must be a positive integer in paise.');
  const existingReservation = await findReservationByKey(idempotencyKey);
  if (existingReservation) {
    const wallet = await findWalletById(existingReservation.walletId);
    return { wallet, reservation: existingReservation, replayed: true };
  }
  await ensureWallet(vendorAccountId);
  const updated = await Wallet.findOneAndUpdate(
    { vendorAccountId, availablePaise: { $gte: amountPaise } },
    { $inc: { availablePaise: -amountPaise, reservedPaise: amountPaise } },
    { returnDocument: 'after' },
  );
  if (!updated) throw new ApiError(409, 'INSUFFICIENT_FUNDS', 'Available wallet balance is too low.');
  try {
    await createLedgerEntry({
      walletId: updated.id, vendorAccountId: updated.vendorAccountId, type: 'reserve', amountPaise,
      availableAfterPaise: updated.availablePaise, reservedAfterPaise: updated.reservedPaise,
      idempotencyKey: `${idempotencyKey}:ledger`, reason, actorId, referenceId: referenceId || '',
    });
  } catch (error) {
    if (!duplicateError(error)) throw error;
  }
  const session = { wallet: updated };
  try {
    const reservation = await createReservation({
      walletId: updated.id, amountPaise, status: 'held', idempotencyKey, reason, referenceId: referenceId || '',
    });
    return { wallet: session.wallet, reservation, replayed: false };
  } catch (error) {
    if (duplicateError(error)) return { wallet: session.wallet, reservation: await findReservationByKey(idempotencyKey), replayed: true };
    throw error;
  }
};

export const releaseReservation = async ({ idempotencyKey, actorId }) => {
  const reservation = await findReservationByKey(idempotencyKey);
  if (!reservation) throw new ApiError(404, 'NOT_FOUND', 'Reservation was not found.');
  if (reservation.status === 'released') {
    const wallet = await findWalletById(reservation.walletId);
    return { wallet, reservation, replayed: true };
  }
  if (reservation.status !== 'held') throw new ApiError(409, 'CONFLICT', 'This reservation cannot be released.');
  const wallet = await findWalletById(reservation.walletId);
  const moved = await persistMove({
    wallet, type: 'release', amountPaise: reservation.amountPaise, idempotencyKey: `${idempotencyKey}:release`,
    reason: 'reservation_released', actorId, referenceId: String(reservation.id),
    apply: (current) => {
      current.reservedPaise -= reservation.amountPaise;
      current.availablePaise += reservation.amountPaise;
    },
  });
  reservation.status = 'released';
  await saveReservation(reservation);
  return { wallet: moved.wallet, reservation, replayed: moved.replayed };
};

export const readVendorWallet = async (actor, vendorId) => {
  const scope = await loadScope(actor);
  const targetId = vendorId ? requireObjectId(vendorId, 'vendor id') : actor.id;
  if (actor.role === 'vendor' && String(actor.id) !== String(targetId)) {
    throw new ApiError(403, 'FORBIDDEN', 'You can only view your own wallet.');
  }
  const vendor = await findAccountById(targetId);
  if (!vendor || vendor.role !== 'vendor') throw new ApiError(404, 'NOT_FOUND', 'Vendor was not found.');
  if (actor.role === 'admin') {
    const links = await listAssignments({ accountId: vendor.id, kind: 'vendor', active: true });
    if (!links.some((row) => scope.branchIds.includes(String(row.branchId)))) {
      throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This vendor is outside your assigned access.');
    }
  }
  const wallet = await ensureWallet(vendor.id);
  const hideBalances = actor.role === 'admin';
  const ledger = hideBalances ? [] : await listLedger(wallet.id);
  return {
    ...publicWallet(wallet, { hideBalances }),
    ledger: ledger.map((entry) => ({
      id: String(entry.id),
      type: entry.type,
      amountPaise: entry.amountPaise,
      availableAfterPaise: entry.availableAfterPaise,
      reservedAfterPaise: entry.reservedAfterPaise,
      reason: entry.reason,
      createdAt: entry.createdAt,
    })),
  };
};

export const listAdminWallets = async (actor) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can list every vendor wallet.');
  const wallets = await listWallets();
  return wallets.map((wallet) => publicWallet(wallet));
};

export const reconcileWallet = (wallet) => wallet.availablePaise + wallet.reservedPaise;
