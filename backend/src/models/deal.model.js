import mongoose from 'mongoose';

const dealSchema = new mongoose.Schema({
  auctionRoundId: { type: mongoose.Schema.Types.ObjectId, ref: 'AuctionRound', required: true, unique: true },
  deviceId: { type: mongoose.Schema.Types.ObjectId, ref: 'Device', required: true, index: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  vendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true },
  bidId: { type: mongoose.Schema.Types.ObjectId, ref: 'Bid', required: true },
  amountPaise: { type: Number, required: true, min: 1 },
  feePaise: { type: Number, required: true, min: 0 },
  totalPaise: { type: Number, required: true, min: 1 },
  status: {
    type: String,
    required: true,
    enum: ['awaiting_customer_verification', 'verified', 'paid', 'picked_up'],
    default: 'awaiting_customer_verification',
    index: true,
  },
  paymentInstructionId: { type: mongoose.Schema.Types.ObjectId, ref: 'PaymentInstruction' },
  customerName: { type: String, default: '' },
  customerPhone: { type: String, default: '' },
  otpSentAt: Date,
  otpVerified: { type: Boolean, default: false },
  idCaptured: { type: Boolean, default: false },
  portraitCaptured: { type: Boolean, default: false },
  purchasedDevice: { type: mongoose.Schema.Types.Mixed, default: null },
  pickedUpAt: Date,
  pickedUpByAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
}, { timestamps: true, versionKey: false });

export const Deal = mongoose.model('Deal', dealSchema);
