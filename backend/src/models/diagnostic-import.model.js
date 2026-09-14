import mongoose from 'mongoose';

const diagnosticImportSchema = new mongoose.Schema({
  deviceId: { type: mongoose.Schema.Types.ObjectId, ref: 'Device', required: true, index: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true },
  nonce: { type: String, required: true, unique: true },
  imei1: { type: String, required: true },
  imei2: { type: String, required: true },
  payload: { type: mongoose.Schema.Types.Mixed, required: true },
  importedByAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true },
  importedAt: { type: Date, required: true, default: Date.now },
}, { timestamps: true, versionKey: false });

export const DiagnosticImport = mongoose.model('DiagnosticImport', diagnosticImportSchema);
