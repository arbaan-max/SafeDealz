import mongoose from 'mongoose';
import { createLedgerEntry, createReservation, createWallet, findLedgerByKey, findReservationByKey, findWalletById, findWalletByVendor, listHeldReservations, listLedger, listWallets, saveReservation, saveWallet } from '../repositories/wallet.repository.js';
import { findAccountById } from '../repositories/account.repository.js';
import { listAssignments } from '../repositories/store-assignment.repository.js';
import { ApiError } from '../utils/api-error.js';
import { requireObjectId } from '../utils/ids.js';
import { publicWallet } from '../utils/presenters.js';
import { loadScope } from './scope.service.js';

const requireKey = (value) => {
  const key = typeof value === 'string' ? value.trim() : '';
  if (!key) throw new ApiError(400, 'VALIDATION_ERROR', 'An idempotency key is required.');
  return key;
};

const requirePaise = (amountPaise, message) => {
  if (!Number.isInteger(amountPaise) || amountPaise < 1) throw new ApiError(400, 'VALIDATION_ERROR', message);
  return amountPaise;
};

const ensureWallet = async (vendorAccountId) => {
  const existing = await findWalletByVendor(vendorAccountId);
  if (existing) return existing;
  return createWallet({ vendorAccountId, availablePaise: 0, reservedPaise: 0 });
};

const publicLedger = (entry) => ({
  id: String(entry.id),
  type: entry.type,
  amountPaise: entry.amountPaise,
  availableAfterPaise: entry.availableAfterPaise,
  reservedAfterPaise: entry.reservedAfterPaise,
  reason: entry.reason,
  referenceId: entry.referenceId || '',
  createdAt: entry.createdAt,
});

const publicHold = (row) => ({
  id: String(row.id),
  amountPaise: row.amountPaise,
  status: row.status,
  reason: row.reason,
  idempotencyKey: row.idempotencyKey,
  referenceId: row.referenceId || '',
  createdAt: row.createdAt,
});

export const creditWallet = async ({ vendorAccountId, amountPaise, idempotencyKey, reason, actorId, referenceId }) => {
  const amount = requirePaise(amountPaise, 'Credit amount must be a positive integer in paise.');
  const key = requireKey(idempotencyKey);
  await ensureWallet(vendorAccountId);
  return mongoose.connection.transaction(async (session) => {
    const existing = await findLedgerByKey(key, session);
    if (existing) {
      return { wallet: await findWalletByVendor(vendorAccountId, session), ledger: existing, replayed: true };
    }
    const wallet = await findWalletByVendor(vendorAccountId, session);
    wallet.availablePaise += amount;
    await saveWallet(wallet, session);
    const ledger = await createLedgerEntry({
      walletId: wallet.id, vendorAccountId: wallet.vendorAccountId, type: 'credit', amountPaise: amount,
      availableAfterPaise: wallet.availablePaise, reservedAfterPaise: wallet.reservedPaise,
      idempotencyKey: key, reason: reason || 'manual_credit', actorId, referenceId: referenceId || '',
    }, session);
    return { wallet, ledger, replayed: false };
  });
};

export const reserveFunds = async ({ vendorAccountId, amountPaise, idempotencyKey, reason, referenceId, actorId }) => {
  const amount = requirePaise(amountPaise, 'Reservation amount must be a positive integer in paise.');
  const key = requireKey(idempotencyKey);
  if (!vendorAccountId) throw new ApiError(400, 'VALIDATION_ERROR', 'A vendor account is required.');
  await ensureWallet(vendorAccountId);
  return mongoose.connection.transaction(async (session) => {
    const existingReservation = await findReservationByKey(key, session);
    if (existingReservation) {
      return { wallet: await findWalletById(existingReservation.walletId, session), reservation: existingReservation, replayed: true };
    }
    const wallet = await findWalletByVendor(vendorAccountId, session);
    if (wallet.availablePaise < amount) throw new ApiError(409, 'INSUFFICIENT_FUNDS', 'Available wallet balance is too low.');
    wallet.availablePaise -= amount;
    wallet.reservedPaise += amount;
    await saveWallet(wallet, session);
    await createLedgerEntry({
      walletId: wallet.id, vendorAccountId: wallet.vendorAccountId, type: 'reserve', amountPaise: amount,
      availableAfterPaise: wallet.availablePaise, reservedAfterPaise: wallet.reservedPaise,
      idempotencyKey: `${key}:ledger`, reason: reason || 'hold', actorId, referenceId: referenceId || '',
    }, session);
    const reservation = await createReservation({
      walletId: wallet.id, amountPaise: amount, status: 'held', idempotencyKey: key, reason: reason || 'hold', referenceId: referenceId || '',
    }, session);
    return { wallet, reservation, replayed: false };
  });
};

export const releaseReservation = async ({ idempotencyKey, actorId, actor }) => {
  const key = requireKey(idempotencyKey);
  return mongoose.connection.transaction(async (session) => {
    const reservation = await findReservationByKey(key, session);
    if (!reservation) throw new ApiError(404, 'NOT_FOUND', 'Reservation was not found.');
    const wallet = await findWalletById(reservation.walletId, session);
    if (actor?.role === 'vendor' && String(wallet.vendorAccountId) !== String(actor.id)) {
      throw new ApiError(403, 'FORBIDDEN', 'You can only release your own reserved funds.');
    }
    if (reservation.status === 'released') return { wallet, reservation, replayed: true };
    if (reservation.status !== 'held') throw new ApiError(409, 'CONFLICT', 'This reservation cannot be released.');
    const releaseKey = `${key}:release`;
    const existing = await findLedgerByKey(releaseKey, session);
    if (existing) {
      reservation.status = 'released';
      await saveReservation(reservation, session);
      return { wallet, reservation, replayed: true };
    }
    wallet.reservedPaise -= reservation.amountPaise;
    wallet.availablePaise += reservation.amountPaise;
    if (wallet.availablePaise < 0 || wallet.reservedPaise < 0) {
      throw new ApiError(409, 'INSUFFICIENT_FUNDS', 'Available wallet balance is too low.');
    }
    await saveWallet(wallet, session);
    await createLedgerEntry({
      walletId: wallet.id, vendorAccountId: wallet.vendorAccountId, type: 'release', amountPaise: reservation.amountPaise,
      availableAfterPaise: wallet.availablePaise, reservedAfterPaise: wallet.reservedPaise,
      idempotencyKey: releaseKey, reason: 'reservation_released', actorId, referenceId: String(reservation.id),
    }, session);
    reservation.status = 'released';
    await saveReservation(reservation, session);
    return { wallet, reservation, replayed: false };
  });
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
  const reservations = hideBalances ? [] : await listHeldReservations(wallet.id);
  return {
    ...publicWallet(wallet, { hideBalances }),
    ledger: ledger.map(publicLedger),
    reservations: reservations.map(publicHold),
  };
};

export const listAdminWallets = async (actor) => {
  if (actor.role !== 'super_admin') throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can list every vendor wallet.');
  const wallets = await listWallets();
  return wallets.map((wallet) => publicWallet(wallet));
};

export const reconcileWallet = (wallet) => wallet.availablePaise + wallet.reservedPaise;
