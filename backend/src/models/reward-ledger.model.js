import mongoose from 'mongoose';

const rewardLedgerSchema = new mongoose.Schema({
  rewardAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'RewardAccount', required: true, index: true },
  customerPhone: { type: String, required: true, index: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  type: { type: String, required: true, enum: ['earn', 'redeem', 'reversal'] },
  points: { type: Number, required: true, min: 1 },
  valuePaise: { type: Number, required: true, min: 0 },
  balanceAfter: { type: Number, required: true, min: 0 },
  dealId: { type: mongoose.Schema.Types.ObjectId, ref: 'Deal' },
  paymentInstructionId: { type: mongoose.Schema.Types.ObjectId, ref: 'PaymentInstruction' },
  invoiceNumber: { type: String, default: '', trim: true },
  idempotencyKey: { type: String, required: true, unique: true },
  policyVersion: { type: Number, required: true },
  earnPointsPerHundredRupees: { type: Number, required: true },
  pointValuePaise: { type: Number, required: true },
  actorId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
  reason: { type: String, required: true, trim: true },
}, { timestamps: { createdAt: true, updatedAt: false }, versionKey: false });

export const RewardLedger = mongoose.model('RewardLedger', rewardLedgerSchema);
