import mongoose from 'mongoose';

const walletReservationSchema = new mongoose.Schema({
  walletId: { type: mongoose.Schema.Types.ObjectId, ref: 'Wallet', required: true, index: true },
  amountPaise: { type: Number, required: true, min: 1 },
  status: { type: String, required: true, enum: ['held', 'released', 'committed'], default: 'held', index: true },
  idempotencyKey: { type: String, required: true, unique: true },
  reason: { type: String, required: true },
  referenceId: { type: String, default: '' },
}, { timestamps: true, versionKey: false });

export const WalletReservation = mongoose.model('WalletReservation', walletReservationSchema);
