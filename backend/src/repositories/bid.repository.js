import { Bid } from '../models/bid.model.js';

export const createBid = (attributes) => Bid.create(attributes);
export const findBidById = (id) => Bid.findById(id);
export const findBidByKey = (idempotencyKey) => Bid.findOne({ idempotencyKey });
export const findVendorBid = (roundId, vendorAccountId) => Bid.findOne({ roundId, vendorAccountId });
export const listBidsForRound = (roundId) => Bid.find({ roundId }).sort({ amountPaise: -1, createdAt: 1, _id: 1 });
export const listBidsForVendor = (vendorAccountId) => Bid.find({ vendorAccountId }).sort({ createdAt: -1 });
export const saveBid = (bid) => bid.save();
export const countBidsForRound = (roundId) => Bid.countDocuments({ roundId });
