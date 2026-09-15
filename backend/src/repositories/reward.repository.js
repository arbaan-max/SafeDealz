import { RewardAccount } from '../models/reward-account.model.js';
import { RewardCustomer } from '../models/reward-customer.model.js';
import { RewardLedger } from '../models/reward-ledger.model.js';
import { RewardPolicy } from '../models/reward-policy.model.js';
import { RewardRedemption } from '../models/reward-redemption.model.js';

export const findCurrentPolicy = (session) => RewardPolicy.findOne({}).sort({ version: -1 }).session(session || null);
export const listPolicies = () => RewardPolicy.find({}).sort({ version: -1 });
export const createPolicy = (attributes, session) => (
  session ? RewardPolicy.create([attributes], { session }).then((rows) => rows[0]) : RewardPolicy.create(attributes)
);
export const nextPolicyVersion = async (session) => {
  const current = await findCurrentPolicy(session);
  return (current?.version || 0) + 1;
};

export const findRewardAccount = (customerPhone, branchId, session) => (
  RewardAccount.findOne({ customerPhone, branchId }).session(session || null)
);
export const listRewardAccounts = (filter = {}) => RewardAccount.find(filter).sort({ customerPhone: 1, createdAt: 1 });
export const listRewardAccountsByPhone = (customerPhone, branchIds) => {
  const filter = { customerPhone };
  if (branchIds) filter.branchId = { $in: branchIds };
  return RewardAccount.find(filter).sort({ createdAt: 1 });
};
export const createRewardAccount = (attributes, session) => (
  session ? RewardAccount.create([attributes], { session }).then((rows) => rows[0]) : RewardAccount.create(attributes)
);
export const saveRewardAccount = (account, session) => account.save(session ? { session } : undefined);

export const findRewardLedgerByKey = (idempotencyKey, session) => (
  RewardLedger.findOne({ idempotencyKey }).session(session || null)
);
export const createRewardLedger = (attributes, session) => (
  session ? RewardLedger.create([attributes], { session }).then((rows) => rows[0]) : RewardLedger.create(attributes)
);
export const listRewardLedger = (filter = {}) => RewardLedger.find(filter).sort({ createdAt: -1 });

export const findRewardCustomer = (phone, session) => RewardCustomer.findOne({ phone }).session(session || null);
export const createRewardCustomer = (attributes, session) => (
  session ? RewardCustomer.create([attributes], { session }).then((rows) => rows[0]) : RewardCustomer.create(attributes)
);
export const listRewardCustomersByPhone = (phones) => RewardCustomer.find({ phone: { $in: phones } });
export const upsertRewardCustomerHistory = (phone, { name, entry }, session) => RewardCustomer.findOneAndUpdate(
  { phone },
  {
    $set: { name: name || '', lastRewardedAt: entry.createdAt || new Date() },
    $push: { history: { $each: [entry], $position: 0, $slice: 200 } },
  },
  { upsert: true, returnDocument: 'after', session: session || undefined },
);
export const saveRewardCustomer = (customer, session) => customer.save(session ? { session } : undefined);
export const aggregateRecentRewardCustomers = (match, skip, limit) => RewardAccount.aggregate([
  { $match: match },
  {
    $group: {
      _id: '$customerPhone',
      customerName: { $first: '$customerName' },
      lastRewardedAt: { $max: '$updatedAt' },
      outstandingPoints: { $sum: '$pointsBalance' },
      issuedPoints: { $sum: '$issuedPoints' },
      redeemedPoints: { $sum: '$redeemedPoints' },
    },
  },
  { $sort: { lastRewardedAt: -1 } },
  {
    $facet: {
      total: [{ $count: 'count' }],
      items: [{ $skip: skip }, { $limit: limit }],
    },
  },
]);

export const findRedemptionById = (id, session) => RewardRedemption.findById(id).session(session || null);
export const listRedemptions = (filter = {}) => RewardRedemption.find(filter).sort({ createdAt: -1 });
export const createRedemptionRow = (attributes) => RewardRedemption.create(attributes);
export const saveRedemption = (row, session) => row.save(session ? { session } : undefined);
export const expirePendingRedemptions = (filter) => RewardRedemption.updateMany(
  { ...filter, status: 'pending_otp' },
  { $set: { otpDigest: '', otpNonce: '', otpExpiresAt: new Date(0) } },
);

