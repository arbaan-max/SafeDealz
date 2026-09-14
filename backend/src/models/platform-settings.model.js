import mongoose from 'mongoose';

const platformSettingsSchema = new mongoose.Schema({
  key: { type: String, required: true, unique: true, default: 'platform' },
  biddingMinutes: { type: Number, required: true, min: 1, max: 30, default: 3 },
  acceptanceMinutes: { type: Number, required: true, min: 1, max: 60, default: 10 },
}, { timestamps: true, versionKey: false });

export const PlatformSettings = mongoose.model('PlatformSettings', platformSettingsSchema);
