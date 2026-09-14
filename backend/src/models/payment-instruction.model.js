import mongoose from 'mongoose';

const paymentInstructionSchema = new mongoose.Schema({
  dealId: { type: mongoose.Schema.Types.ObjectId, ref: 'Deal', required: true, unique: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  vendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
  amountPaise: { type: Number, required: true, min: 1 },
  feePaise: { type: Number, required: true, min: 0 },
  status: {
    type: String,
    required: true,
    enum: ['awaiting_customer_verification', 'ready_for_transfer', 'processing', 'paid', 'needs_attention', 'unknown'],
    default: 'awaiting_customer_verification',
    index: true,
  },
  beneficiaryName: { type: String, default: '' },
  accountNumberMasked: { type: String, default: '' },
  ifsc: { type: String, default: '' },
  idempotencyKey: { type: String, required: true, unique: true },
  reservationIdempotencyKey: { type: String, default: '' },
  providerTransferId: { type: String, default: '', index: true },
  providerStatus: { type: String, default: '' },
  attempts: { type: [mongoose.Schema.Types.Mixed], default: [] },
}, { timestamps: true, versionKey: false });

export const PaymentInstruction = mongoose.model('PaymentInstruction', paymentInstructionSchema);
