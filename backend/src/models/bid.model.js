import mongoose from 'mongoose';

const bidSchema = new mongoose.Schema({
  roundId: { type: mongoose.Schema.Types.ObjectId, ref: 'AuctionRound', required: true, index: true },
  deviceId: { type: mongoose.Schema.Types.ObjectId, ref: 'Device', required: true, index: true },
  vendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account', required: true, index: true },
  amountPaise: { type: Number, required: true, min: 1 },
  feePaise: { type: Number, required: true, min: 0 },
  feeRate: { type: Number, required: true },
  totalPaise: { type: Number, required: true, min: 1 },
  basePaise: { type: Number, default: 0 },
  cosmeticDeductionPaise: { type: Number, default: 0 },
  batteryDeductionPaise: { type: Number, default: 0 },
  status: {
    type: String,
    required: true,
    enum: ['submitted', 'won', 'lost', 'released', 'committed'],
    default: 'submitted',
    index: true,
  },
  reservationIdempotencyKey: { type: String, required: true },
  idempotencyKey: { type: String, required: true, unique: true },
}, { timestamps: true, versionKey: false });

bidSchema.index({ roundId: 1, vendorAccountId: 1 }, { unique: true });
bidSchema.index({ roundId: 1, amountPaise: -1, createdAt: 1 });

export const Bid = mongoose.model('Bid', bidSchema);
