import { Wallet } from '../models/wallet.model.js';
import { WalletLedger } from '../models/wallet-ledger.model.js';
import { WalletReservation } from '../models/wallet-reservation.model.js';

export const createWallet = (attributes) => Wallet.create(attributes);
export const findWalletByVendor = (vendorAccountId, session) => Wallet.findOne({ vendorAccountId }).session(session || null);
export const findWalletById = (id, session) => Wallet.findById(id).session(session || null);
export const listWallets = (filter = {}) => Wallet.find(filter);
export const saveWallet = (wallet, session) => wallet.save(session ? { session } : undefined);
export const createLedgerEntry = (attributes, session) => (
  session ? WalletLedger.create([attributes], { session }).then((rows) => rows[0]) : WalletLedger.create(attributes)
);
export const findLedgerByKey = (idempotencyKey, session) => WalletLedger.findOne({ idempotencyKey }).session(session || null);
export const listLedger = (walletId) => WalletLedger.find({ walletId }).sort({ createdAt: -1 });
export const createReservation = (attributes, session) => (
  session ? WalletReservation.create([attributes], { session }).then((rows) => rows[0]) : WalletReservation.create(attributes)
);
export const findReservationByKey = (idempotencyKey, session) => WalletReservation.findOne({ idempotencyKey }).session(session || null);
export const listHeldReservations = (walletId) => WalletReservation.find({ walletId, status: { $in: ['held', 'committed'] } }).sort({ createdAt: -1 });
export const saveReservation = (reservation, session) => reservation.save(session ? { session } : undefined);
export const sumCommittedReservations = async (walletId) => {
  const rows = await WalletReservation.find({ walletId, status: 'committed' });
  return rows.reduce((sum, row) => sum + row.amountPaise, 0);
};
