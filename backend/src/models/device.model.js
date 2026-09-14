import mongoose from 'mongoose';

const deviceSchema = new mongoose.Schema({
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  createdByAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true },
  platform: { type: String, required: true, enum: ['apple', 'android'] },
  model: { type: String, required: true, trim: true },
  imei1: { type: String, required: true, trim: true },
  imei2: { type: String, required: true, trim: true },
  storage: { type: String, required: true },
  ram: { type: String, default: '' },
  batteryHealth: { type: Number, min: 1, max: 100 },
  catalogVersion: { type: String },
  status: {
    type: String,
    required: true,
    enum: ['draft', 'inspecting', 'awaiting_diagnostics', 'ready_for_auction'],
    default: 'draft',
    index: true,
  },
  inspection: { type: mongoose.Schema.Types.Mixed, default: null },
  diagnosticImportId: { type: mongoose.Schema.Types.ObjectId, ref: 'DiagnosticImport' },
}, { timestamps: true, versionKey: false });

deviceSchema.index({ imei1: 1, branchId: 1 }, { unique: true });
deviceSchema.index({ imei2: 1, branchId: 1 }, { unique: true });

export const Device = mongoose.model('Device', deviceSchema);
