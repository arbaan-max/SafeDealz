import mongoose from 'mongoose';

const rewardRedemptionSchema = new mongoose.Schema({
  customerPhone: { type: String, required: true, index: true },
  customerName: { type: String, default: '', trim: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  rewardAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'RewardAccount', required: true },
  managerAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true },
  invoiceNumber: { type: String, required: true, trim: true },
  category: { type: String, required: true, trim: true },
  billAmountPaise: { type: Number, required: true, min: 1 },
  discountPaise: { type: Number, required: true, min: 1 },
  points: { type: Number, required: true, min: 1 },
  remainingPoints: { type: Number, required: true, min: 0 },
  bindKey: { type: String, required: true },
  otpDigest: { type: String, default: '' },
  otpNonce: { type: String, default: '' },
  otpSentAt: Date,
  otpExpiresAt: Date,
  otpAttempts: { type: Number, default: 0 },
  otpSendCount: { type: Number, default: 0 },
  status: { type: String, required: true, enum: ['pending_otp', 'redeemed'], default: 'pending_otp', index: true },
  duplicateInvoice: { type: Boolean, default: false },
  redeemedAt: Date,
}, { timestamps: true, versionKey: false });

rewardRedemptionSchema.index({ branchId: 1, createdAt: -1 });
rewardRedemptionSchema.index({ branchId: 1, invoiceNumber: 1 });

export const RewardRedemption = mongoose.model('RewardRedemption', rewardRedemptionSchema);
