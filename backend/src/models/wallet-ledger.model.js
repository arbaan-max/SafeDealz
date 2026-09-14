import mongoose from 'mongoose';

const walletLedgerSchema = new mongoose.Schema({
  walletId: { type: mongoose.Schema.Types.ObjectId, ref: 'Wallet', required: true, index: true },
  vendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  type: { type: String, required: true, enum: ['credit', 'reserve', 'release', 'commit', 'settle'] },
  amountPaise: { type: Number, required: true, min: 1 },
  availableAfterPaise: { type: Number, required: true, min: 0 },
  reservedAfterPaise: { type: Number, required: true, min: 0 },
  idempotencyKey: { type: String, required: true, unique: true },
  reason: { type: String, required: true, trim: true },
  actorId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
  referenceId: { type: String, trim: true, default: '' },
}, { timestamps: { createdAt: true, updatedAt: false }, versionKey: false });

export const WalletLedger = mongoose.model('WalletLedger', walletLedgerSchema);
