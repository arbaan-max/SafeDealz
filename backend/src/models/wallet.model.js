import mongoose from 'mongoose';

const walletSchema = new mongoose.Schema({
  vendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, unique: true },
  availablePaise: { type: Number, required: true, min: 0, default: 0 },
  reservedPaise: { type: Number, required: true, min: 0, default: 0 },
}, { timestamps: true, versionKey: false });

export const Wallet = mongoose.model('Wallet', walletSchema);
