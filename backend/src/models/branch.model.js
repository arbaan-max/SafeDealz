import mongoose from 'mongoose';

const branchSchema = new mongoose.Schema({
  chainId: { type: mongoose.Schema.Types.ObjectId, ref: 'Chain', required: true, index: true },
  name: { type: String, required: true, trim: true },
  code: { type: String, required: true, uppercase: true, trim: true },
  address: { type: String, trim: true, default: '' },
  city: { type: String, trim: true, default: '' },
  contactName: { type: String, trim: true, default: '' },
  contactPhone: { type: String, trim: true, default: '' },
  beneficiaryName: { type: String, trim: true, default: '' },
  accountNumber: { type: String, select: false, default: '' },
  ifsc: { type: String, uppercase: true, trim: true, default: '' },
  active: { type: Boolean, required: true, default: true, index: true },
}, { timestamps: true, versionKey: false });

branchSchema.index({ chainId: 1, code: 1 }, { unique: true });
branchSchema.index({ chainId: 1, name: 1 }, { unique: true });

export const Branch = mongoose.model('Branch', branchSchema);
