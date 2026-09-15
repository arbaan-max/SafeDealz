import mongoose from 'mongoose';

const accountSchema = new mongoose.Schema({
  email: { type: String, required: true, lowercase: true, trim: true, unique: true },
  passwordHash: { type: String, required: true, select: false },
  role: { type: String, required: true, enum: ['super_admin', 'admin', 'store_manager', 'vendor'], index: true },
  displayName: { type: String, trim: true, default: '' },
  phone: { type: String, trim: true, default: '' },
  active: { type: Boolean, required: true, default: true, index: true },
  isDeleted: { type: Boolean, required: true, default: false, index: true },
}, { timestamps: true, versionKey: false });

export const Account = mongoose.model('Account', accountSchema);
