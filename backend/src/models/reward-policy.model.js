import mongoose from 'mongoose';

const rewardPolicySchema = new mongoose.Schema({
  version: { type: Number, required: true, unique: true, min: 1 },
  earnPointsPerHundredRupees: { type: Number, required: true, min: 1, default: 10 },
  pointValuePaise: { type: Number, required: true, min: 1, default: 50 },
  eligibleCategories: { type: [String], default: () => ['accessories', 'value_added_services'] },
  expiryDays: { type: Number, default: 0, min: 0 },
  redemptionScope: { type: String, required: true, enum: ['branch_only', 'chain', 'multi_branch'], default: 'branch_only' },
  chainRedemptionEnabled: { type: Boolean, default: false },
  multiBranchRedemptionEnabled: { type: Boolean, default: false },
  effectiveFrom: { type: Date, required: true },
  createdByAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
  note: { type: String, default: '', trim: true },
}, { timestamps: { createdAt: true, updatedAt: false }, versionKey: false });

export const RewardPolicy = mongoose.model('RewardPolicy', rewardPolicySchema);
