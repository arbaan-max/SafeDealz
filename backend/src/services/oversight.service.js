import { AuctionRound } from '../models/auction-round.model.js';
import { Bid } from '../models/bid.model.js';
import { Branch } from '../models/branch.model.js';
import { Deal } from '../models/deal.model.js';
import { PaymentInstruction } from '../models/payment-instruction.model.js';
import { RewardLedger } from '../models/reward-ledger.model.js';
import { WalletLedger } from '../models/wallet-ledger.model.js';
import { listAssignments } from '../repositories/store-assignment.repository.js';
import { listAuditEvents } from '../repositories/audit-event.repository.js';
import { listBranches } from '../repositories/branch.repository.js';
import { ApiError } from '../utils/api-error.js';
import { loadScope } from './scope.service.js';

const periodFilter = (query, field = 'createdAt') => {
  const filter = {};
  if (query.from) filter[field] = { ...(filter[field] || {}), $gte: new Date(query.from) };
  if (query.to) filter[field] = { ...(filter[field] || {}), $lte: new Date(query.to) };
  return filter;
};

const scopedBranches = async (actor, query = {}) => {
  const scope = await loadScope(actor);
  let branchIds = scope.all ? (await listBranches({})).map((row) => String(row.id)) : scope.branchIds;
  if (query.branchId) {
    if (!scope.all && !scope.branchIds.includes(String(query.branchId))) {
      throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This store is outside your assigned access.');
    }
    branchIds = [String(query.branchId)];
  }
  if (query.chainId) {
    const chainBranches = await listBranches({ chainId: query.chainId, ...(scope.all ? {} : { _id: { $in: branchIds } }) });
    branchIds = chainBranches.map((row) => String(row.id));
  }
  return { scope, branchIds };
};

export const readOverview = async (actor) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Overview is limited to Admin accounts.');
  }
  const { branchIds, scope } = await scopedBranches(actor);
  const branchFilter = scope.all ? {} : { branchId: { $in: branchIds } };
  const [liveAuctions, awaitingAcceptance, paymentExceptions, paid, branches] = await Promise.all([
    AuctionRound.countDocuments({ status: 'live', ...branchFilter }),
    AuctionRound.countDocuments({ status: 'awaiting_acceptance', ...branchFilter }),
    PaymentInstruction.countDocuments({ status: { $in: ['needs_attention', 'unknown'] }, ...branchFilter }),
    PaymentInstruction.find({ status: 'paid', ...branchFilter }),
    listBranches(scope.all ? {} : { _id: { $in: branchIds } }),
  ]);
  const completedValuePaise = paid.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const needsAttention = [
    ...((await PaymentInstruction.find({ status: { $in: ['needs_attention', 'unknown'] }, ...branchFilter }).limit(20)).map((row) => ({
      kind: 'payment', id: String(row.id), label: `Payment ${row.status.replaceAll('_', ' ')}`,
    }))),
    ...branches.filter((branch) => !(branch.beneficiaryName && branch.accountNumber && branch.ifsc)).map((branch) => ({
      kind: 'branch_setup', id: String(branch.id), label: `${branch.name} payout details incomplete`,
    })),
  ];
  return {
    liveAuctions,
    awaitingAcceptance,
    paymentExceptions,
    completedValuePaise,
    needsAttention,
  };
};

export const readReports = async (actor, query = {}) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Reports are limited to Admin accounts.');
  }
  const { branchIds } = await scopedBranches(actor, query);
  const created = periodFilter(query);
  const branchFilter = { branchId: { $in: branchIds } };
  const vendorIds = (await listAssignments({ branchId: { $in: branchIds }, kind: 'vendor', active: true })).map((row) => row.accountId);
  const [started, acceptedDeals, paid, pickups, walletRows, earnRows, redeemRows] = await Promise.all([
    AuctionRound.countDocuments({ ...branchFilter, ...created }),
    Deal.find({ ...branchFilter, ...created }),
    PaymentInstruction.find({ status: 'paid', ...branchFilter, ...created }),
    Deal.countDocuments({ status: 'picked_up', ...branchFilter, ...created }),
    WalletLedger.find({ type: { $in: ['credit', 'commit', 'settle'] }, vendorAccountId: { $in: vendorIds }, ...created }),
    RewardLedger.find({ type: 'earn', ...branchFilter, ...created }),
    RewardLedger.find({ type: 'redeem', ...branchFilter, ...created }),
  ]);
  const accepted = acceptedDeals.length;
  const paidValuePaise = paid.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const acceptedValuePaise = acceptedDeals.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const walletMovementsPaise = walletRows.reduce((sum, row) => sum + (row.amountPaise || 0), 0);
  const rewardIssuedPoints = earnRows.reduce((sum, row) => sum + (row.points || 0), 0);
  const rewardRedeemedPoints = redeemRows.reduce((sum, row) => sum + (row.points || 0), 0);
  const outstandingValuePaise = earnRows.reduce((sum, row) => sum + (row.valuePaise || 0), 0) - redeemRows.reduce((sum, row) => sum + (row.valuePaise || 0), 0);
  return {
    auctionConversion: { started, accepted, rate: started ? accepted / started : 0 },
    acceptedValuePaise,
    paidValuePaise,
    pickupCount: pickups,
    walletMovementsPaise,
    rewardIssuedPoints,
    rewardRedeemedPoints,
    billingReconciliation: { paidValuePaise, rewardOutstandingValuePaise: Math.max(0, outstandingValuePaise) },
  };
};

const csvCell = (value) => {
  const text = String(value ?? '');
  return /^[=+\-@]/.test(text) ? `'${text.replaceAll('"', '""')}` : text;
};

export const exportReports = async (actor, query = {}) => {
  const report = await readReports(actor, query);
  const csv = [
    'metric,value',
    `started,${csvCell(report.auctionConversion.started)}`,
    `accepted,${csvCell(report.auctionConversion.accepted)}`,
    `acceptedValuePaise,${csvCell(report.acceptedValuePaise)}`,
    `paidValuePaise,${csvCell(report.paidValuePaise)}`,
    `pickupCount,${csvCell(report.pickupCount)}`,
    `walletMovementsPaise,${csvCell(report.walletMovementsPaise)}`,
    `rewardIssuedPoints,${csvCell(report.rewardIssuedPoints)}`,
    `rewardRedeemedPoints,${csvCell(report.rewardRedeemedPoints)}`,
  ].join('\n');
  return { filename: 'safedealz-report.csv', csv, generatedAt: new Date().toISOString() };
};

export const listAudit = async (actor, query = {}) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Audit is limited to Admin accounts.');
  }
  const scope = await loadScope(actor);
  const filter = {};
  if (query.action) filter.action = query.action;
  if (query.entityType) filter.entityType = query.entityType;
  if (!scope.all) filter.storeId = { $in: scope.branchIds };
  const rows = await listAuditEvents(filter);
  return rows.map((row) => ({
    id: String(row.id),
    actorId: String(row.actorId),
    actorRole: row.actorRole,
    action: row.action,
    entityType: row.entityType,
    entityId: row.entityId,
    storeId: row.storeId ? String(row.storeId) : '',
    createdAt: row.createdAt,
    metadata: row.metadata && typeof row.metadata === 'object'
      ? Object.fromEntries(Object.entries(row.metadata).filter(([key]) => !/otp|kyc|password|accountNumber/i.test(key)))
      : {},
  }));
};

export const readVendorPerformance = async (actor, query = {}) => {
  if (actor.role !== 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Performance is limited to the vendor account.');
  const created = periodFilter(query);
  const bids = await Bid.find({ vendorAccountId: actor.id, ...created });
  const wins = bids.filter((row) => row.status === 'won' || row.status === 'committed');
  const deals = await Deal.find({ vendorAccountId: actor.id, status: { $in: ['paid', 'picked_up'] }, ...created });
  const rounds = await AuctionRound.find({ _id: { $in: bids.map((row) => row.roundId) } });
  const roundMap = Object.fromEntries(rounds.map((row) => [String(row.id), row]));
  const responseSeconds = bids.map((bid) => {
    const round = roundMap[String(bid.roundId)];
    if (!round?.opensAt || !bid.createdAt) return null;
    return Math.max(0, (new Date(bid.createdAt) - new Date(round.opensAt)) / 1000);
  }).filter((value) => value != null);
  const hourly = Array.from({ length: 24 }, (_, hour) => ({
    hour,
    bids: bids.filter((bid) => new Date(bid.createdAt).getHours() === hour).length,
  }));
  return {
    bids: bids.length,
    wins: wins.length,
    acceptedPurchases: deals.length,
    winRate: bids.length ? wins.length / bids.length : 0,
    averageResponseSeconds: responseSeconds.length ? responseSeconds.reduce((sum, value) => sum + value, 0) / responseSeconds.length : 0,
    hourly,
  };
};
