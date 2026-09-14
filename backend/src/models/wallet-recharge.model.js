import mongoose from 'mongoose';

const walletRechargeSchema = new mongoose.Schema({
  vendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  amountPaise: { type: Number, required: true, min: 1 },
  orderId: { type: String, required: true, unique: true },
  paymentId: { type: String, unique: true, sparse: true },
  status: { type: String, required: true, enum: ['pending', 'confirmed', 'failed'], default: 'pending', index: true },
  idempotencyKey: { type: String, required: true, unique: true },
  clientAcknowledged: { type: Boolean, required: true, default: false },
  lastEvent: { type: String, default: '' },
}, { timestamps: true, versionKey: false });

export const WalletRecharge = mongoose.model('WalletRecharge', walletRechargeSchema);
