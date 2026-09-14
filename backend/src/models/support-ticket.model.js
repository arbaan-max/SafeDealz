import mongoose from 'mongoose';

const noteSchema = new mongoose.Schema({
  authorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true },
  authorRole: { type: String, required: true, enum: ['super_admin', 'admin', 'store_manager', 'vendor'] },
  body: { type: String, required: true, trim: true },
}, { timestamps: { createdAt: true, updatedAt: false }, versionKey: false });

const attachmentSchema = new mongoose.Schema({
  objectKey: { type: String, required: true, trim: true },
  contentType: { type: String, required: true, trim: true },
  sizeBytes: { type: Number, required: true },
  checksumSha256: { type: String, required: true, lowercase: true, trim: true },
  status: { type: String, required: true, enum: ['pending', 'uploaded'], default: 'pending' },
  grantExpiresAt: Date,
}, { timestamps: { createdAt: true, updatedAt: true }, versionKey: false });

const supportTicketSchema = new mongoose.Schema({
  creatorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  creatorRole: { type: String, required: true, enum: ['store_manager', 'vendor'] },
  subjectType: { type: String, required: true, enum: ['device', 'deal', 'payment', 'bid', 'redemption'] },
  subjectId: { type: mongoose.Schema.Types.ObjectId, required: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  reasonCode: { type: String, required: true, enum: ['payment_issue', 'pickup_issue', 'device_issue', 'redemption_issue', 'bid_issue', 'other'] },
  status: { type: String, required: true, enum: ['open', 'investigating', 'resolved'], default: 'open', index: true },
  ownerAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
  notes: { type: [noteSchema], default: [] },
  attachments: { type: [attachmentSchema], default: [] },
  idempotencyKey: { type: String, unique: true, sparse: true },
}, { timestamps: true, versionKey: false });

supportTicketSchema.index(
  { creatorAccountId: 1, subjectType: 1, subjectId: 1 },
  { unique: true, partialFilterExpression: { status: { $in: ['open', 'investigating'] } } },
);
supportTicketSchema.index({ branchId: 1, createdAt: -1 });

export const SupportTicket = mongoose.model('SupportTicket', supportTicketSchema);
