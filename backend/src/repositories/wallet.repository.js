import { Wallet } from '../models/wallet.model.js';
import { WalletLedger } from '../models/wallet-ledger.model.js';
import { WalletReservation } from '../models/wallet-reservation.model.js';

export const createWallet = (attributes) => Wallet.create(attributes);
export const findWalletByVendor = (vendorAccountId) => Wallet.findOne({ vendorAccountId });
export const findWalletById = (id) => Wallet.findById(id);
export const listWallets = (filter = {}) => Wallet.find(filter);
export const saveWallet = (wallet) => wallet.save();
export const createLedgerEntry = (attributes) => WalletLedger.create(attributes);
export const findLedgerByKey = (idempotencyKey) => WalletLedger.findOne({ idempotencyKey });
export const listLedger = (walletId) => WalletLedger.find({ walletId }).sort({ createdAt: -1 });
export const createReservation = (attributes) => WalletReservation.create(attributes);
export const findReservationByKey = (idempotencyKey) => WalletReservation.findOne({ idempotencyKey });
export const findReservationById = (id) => WalletReservation.findById(id);
export const saveReservation = (reservation) => reservation.save();
