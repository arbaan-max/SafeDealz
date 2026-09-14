import mongoose from 'mongoose';

const notificationSchema = new mongoose.Schema({
  recipientAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  recipientRole: { type: String, required: true, enum: ['super_admin', 'admin', 'store_manager', 'vendor'] },
  title: { type: String, required: true, trim: true },
  body: { type: String, required: true, trim: true },
  category: { type: String, required: true, trim: true },
  audience: { type: String, required: true, enum: ['all_users', 'all_stores', 'all_vendors', 'store', 'vendor', 'account', 'event'] },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch' },
  campaignId: { type: String, default: '', index: true },
  deepLink: { type: String, default: '' },
  status: { type: String, required: true, enum: ['queued', 'delivered', 'failed'], default: 'delivered', index: true },
  readAt: Date,
  idempotencyKey: { type: String, required: true, unique: true },
  actorId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
}, { timestamps: { createdAt: true, updatedAt: true }, versionKey: false });

notificationSchema.index({ recipientAccountId: 1, createdAt: -1 });

export const Notification = mongoose.model('Notification', notificationSchema);
