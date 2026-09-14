import { AuctionRound } from '../models/auction-round.model.js';

export const createAuctionRound = (attributes) => AuctionRound.create(attributes);
export const findAuctionById = (id) => AuctionRound.findById(id);
export const findLiveRoundForDevice = (deviceId) => AuctionRound.findOne({ deviceId, status: 'live' });
export const countRoundsForDevice = (deviceId) => AuctionRound.countDocuments({ deviceId });
export const listExpiredLiveRounds = (closesAt) => AuctionRound.find({ status: 'live', closesAt: { $lte: closesAt } });
export const listExpiredAcceptanceRounds = (deadline) => AuctionRound.find({
  status: 'awaiting_acceptance',
  acceptanceDeadlineAt: { $lte: deadline },
});
export const listAuctions = (filter) => AuctionRound.find(filter).sort({ opensAt: -1 });
export const saveAuctionRound = (round) => round.save();
export const claimAcceptance = (id, nowAt) => AuctionRound.findOneAndUpdate(
  { _id: id, status: 'awaiting_acceptance', acceptanceDeadlineAt: { $gt: nowAt } },
  { $set: { status: 'accepted' } },
  { returnDocument: 'after' },
);
