import mongoose from 'mongoose';

const historySchema = new mongoose.Schema({
  type: { type: String, required: true, enum: ['earn', 'redeem', 'reversal'] },
  points: { type: Number, required: true, min: 1 },
  valuePaise: { type: Number, required: true, min: 0 },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch' },
  branchName: { type: String, default: '', trim: true },
  dealId: { type: mongoose.Schema.Types.ObjectId, ref: 'Deal' },
  invoiceNumber: { type: String, default: '', trim: true },
  policyVersion: { type: Number },
  reason: { type: String, default: '', trim: true },
  createdAt: { type: Date, default: Date.now },
}, { _id: true, versionKey: false });

const rewardCustomerSchema = new mongoose.Schema({
  phone: { type: String, required: true, unique: true, index: true },
  name: { type: String, default: '', trim: true },
  lastRewardedAt: { type: Date, default: Date.now, index: true },
  history: { type: [historySchema], default: [] },
}, { timestamps: true, versionKey: false });

export const RewardCustomer = mongoose.model('RewardCustomer', rewardCustomerSchema);
