import mongoose from 'mongoose';

const sessionSchema = new mongoose.Schema({
  accountId: { type: mongoose.Schema.Types.ObjectId, required: true, index: true },
  familyId: { type: String, required: true, unique: true },
  refreshDigest: { type: String, required: true, unique: true, select: false },
  clientType: { type: String, required: true, enum: ['web', 'mobile'] },
  expiresAt: { type: Date, required: true, expires: 0 },
  revokedAt: Date,
  revokeReason: String,
}, { timestamps: true, versionKey: false });

sessionSchema.index({ accountId: 1, revokedAt: 1 });
export const Session = mongoose.model('Session', sessionSchema);
