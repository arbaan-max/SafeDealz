import mongoose from 'mongoose';

const rewardAccountSchema = new mongoose.Schema({
  customerPhone: { type: String, required: true, index: true },
  customerName: { type: String, default: '', trim: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  chainId: { type: mongoose.Schema.Types.ObjectId, ref: 'Chain', required: true, index: true },
  pointsBalance: { type: Number, required: true, min: 0, default: 0 },
  issuedPoints: { type: Number, required: true, min: 0, default: 0 },
  redeemedPoints: { type: Number, required: true, min: 0, default: 0 },
}, { timestamps: true, versionKey: false });

rewardAccountSchema.index({ customerPhone: 1, branchId: 1 }, { unique: true });

export const RewardAccount = mongoose.model('RewardAccount', rewardAccountSchema);
