import mongoose from 'mongoose';

const pushTokenSchema = new mongoose.Schema({
  accountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  token: { type: String, required: true, unique: true, trim: true },
  platform: { type: String, required: true, enum: ['web', 'android', 'ios'] },
  client: { type: String, required: true, enum: ['admin', 'store_manager', 'vendor', 'diagnostics'] },
}, { timestamps: true, versionKey: false });

pushTokenSchema.index({ accountId: 1, client: 1 });

export const PushToken = mongoose.model('PushToken', pushTokenSchema);
