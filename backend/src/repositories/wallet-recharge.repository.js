import mongoose from 'mongoose';
import { WalletRecharge } from '../models/wallet-recharge.model.js';

export const createRecharge = (attributes, session) => (
  session ? WalletRecharge.create([attributes], { session }).then((rows) => rows[0]) : WalletRecharge.create(attributes)
);
export const findRechargeByKey = (idempotencyKey) => WalletRecharge.findOne({ idempotencyKey });
export const findRechargeById = (id) => WalletRecharge.findById(id);
export const findRechargeByOrderId = (orderId) => WalletRecharge.findOne({ orderId });
export const findRechargeByPaymentId = (paymentId) => WalletRecharge.findOne({ paymentId });
export const saveRecharge = (recharge, session) => recharge.save(session ? { session } : undefined);
export const sumPendingRecharges = async (vendorAccountId) => {
  const rows = await WalletRecharge.find({
    vendorAccountId: new mongoose.Types.ObjectId(String(vendorAccountId)),
    status: 'pending',
  });
  return rows.reduce((sum, row) => sum + row.amountPaise, 0);
};
