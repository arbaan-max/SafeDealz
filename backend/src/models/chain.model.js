import mongoose from 'mongoose';

const chainSchema = new mongoose.Schema({
  name: { type: String, required: true, trim: true },
  code: { type: String, required: true, uppercase: true, trim: true, unique: true },
  contactName: { type: String, trim: true, default: '' },
  contactEmail: { type: String, lowercase: true, trim: true, default: '' },
  contactPhone: { type: String, trim: true, default: '' },
  active: { type: Boolean, required: true, default: true, index: true },
  isDeleted: { type: Boolean, required: true, default: false, index: true },
}, { timestamps: true, versionKey: false });

export const Chain = mongoose.model('Chain', chainSchema);
