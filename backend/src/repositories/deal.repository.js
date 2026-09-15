import { Deal } from '../models/deal.model.js';
import { PaymentInstruction } from '../models/payment-instruction.model.js';

export const createDeal = (attributes) => Deal.create(attributes);
export const findDealById = (id) => Deal.findById(id);
export const findDealByRound = (auctionRoundId) => Deal.findOne({ auctionRoundId });
export const findDealByDevice = (deviceId) => Deal.findOne({ deviceId }).sort({ createdAt: -1 });
export const listDeals = (filter = {}) => Deal.find(filter).sort({ createdAt: -1 });
export const listDealsByIds = (ids) => Deal.find({ _id: { $in: ids } });
export const saveDeal = (deal) => deal.save();
export const createPaymentInstruction = (attributes) => PaymentInstruction.create(attributes);
export const findPaymentByDeal = (dealId) => PaymentInstruction.findOne({ dealId });
export const findPaymentById = (id) => PaymentInstruction.findById(id);
export const findPaymentByTransferId = (providerTransferId) => PaymentInstruction.findOne({ providerTransferId });
export const listPayments = (filter = {}) => PaymentInstruction.find(filter).sort({ createdAt: -1 });
export const savePaymentInstruction = (row) => row.save();
