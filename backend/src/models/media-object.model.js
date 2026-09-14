import mongoose from 'mongoose';

const mediaObjectSchema = new mongoose.Schema({
  deviceId: { type: mongoose.Schema.Types.ObjectId, ref: 'Device', required: true, index: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  purpose: { type: String, required: true, enum: ['front', 'back', 'top', 'bottom', 'left', 'right', 'rotation', 'bill'] },
  objectKey: { type: String, required: true, unique: true },
  contentType: { type: String, required: true },
  sizeBytes: { type: Number, required: true, min: 1 },
  checksumSha256: { type: String, required: true },
  status: { type: String, required: true, enum: ['pending', 'uploaded'], default: 'pending' },
  grantExpiresAt: { type: Date },
}, { timestamps: true, versionKey: false });

mediaObjectSchema.index({ deviceId: 1, purpose: 1 }, { unique: true });

export const MediaObject = mongoose.model('MediaObject', mediaObjectSchema);
