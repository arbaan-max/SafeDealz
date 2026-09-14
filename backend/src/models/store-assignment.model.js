import mongoose from 'mongoose';

const storeAssignmentSchema = new mongoose.Schema({
  accountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  kind: { type: String, required: true, enum: ['admin', 'store_manager', 'vendor'] },
  active: { type: Boolean, required: true, default: true, index: true },
  assignedAt: { type: Date, required: true, default: Date.now },
  revokedAt: Date,
}, { timestamps: true, versionKey: false });

storeAssignmentSchema.index({ accountId: 1, branchId: 1, kind: 1 }, { unique: true });
storeAssignmentSchema.index({ kind: 1, accountId: 1, active: 1 });

export const StoreAssignment = mongoose.model('StoreAssignment', storeAssignmentSchema);
