import mongoose from 'mongoose';

const auctionRoundSchema = new mongoose.Schema({
  deviceId: { type: mongoose.Schema.Types.ObjectId, ref: 'Device', required: true, index: true },
  branchId: { type: mongoose.Schema.Types.ObjectId, ref: 'Branch', required: true, index: true },
  roundNumber: { type: Number, required: true, min: 1 },
  status: {
    type: String,
    required: true,
    enum: ['live', 'closed', 'cancelled', 'awaiting_acceptance', 'accepted', 'needs_reauction'],
    default: 'live',
    index: true,
  },
  opensAt: { type: Date, required: true },
  closesAt: { type: Date, required: true, index: true },
  acceptanceDeadlineAt: Date,
  biddingMinutes: { type: Number, required: true },
  acceptanceMinutes: { type: Number, required: true },
  bidCount: { type: Number, required: true, default: 0 },
  highestAmountPaise: { type: Number, required: true, default: 0 },
  winnerBidId: { type: mongoose.Schema.Types.ObjectId, ref: 'Bid' },
  winnerVendorAccountId: { type: mongoose.Schema.Types.ObjectId, ref: 'Account' },
  cancelReason: { type: String, default: '' },
  declineReason: { type: String, default: '' },
  expectedAmountPaise: { type: Number, default: 0 },
}, { timestamps: true, versionKey: false });

auctionRoundSchema.index({ deviceId: 1, status: 1 });
auctionRoundSchema.index({ deviceId: 1, roundNumber: 1 }, { unique: true });

export const AuctionRound = mongoose.model('AuctionRound', auctionRoundSchema);
