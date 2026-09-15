import mongoose from 'mongoose';
import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { findBranchById } from '../repositories/branch.repository.js';
import { findDealById, listDealsByIds } from '../repositories/deal.repository.js';
import { findDeviceById, listDevicesByIds } from '../repositories/device.repository.js';
import { createOutboxEvent } from '../repositories/outbox-event.repository.js';
import {
  aggregateRecentRewardCustomers,
  createPolicy,
  createRedemptionRow,
  createRewardAccount,
  createRewardLedger,
  expirePendingRedemptions,
  findCurrentPolicy,
  findRedemptionById,
  findRewardAccount,
  findRewardCustomer,
  findRewardLedgerByKey,
  createRewardCustomer,
  listPolicies,
  listRedemptions,
  listRewardAccounts,
  listRewardAccountsByPhone,
  listRewardCustomersByPhone,
  listRewardLedger,
  nextPolicyVersion,
  saveRedemption,
  saveRewardAccount,
  upsertRewardCustomerHistory,
} from '../repositories/reward.repository.js';
import { ApiError } from '../utils/api-error.js';
import { digestToken, opaqueId } from '../utils/auth-crypto.js';
import { addMinutes, now } from '../utils/clock.js';
import { duplicateError, isObjectId, requireObjectId } from '../utils/ids.js';
import { assertBranchInScope, loadScope } from './scope.service.js';

export const HUNDRED_RUPEES_PAISE = 10000;
export const DEFAULT_EARN_POINTS_PER_HUNDRED = 10;
export const DEFAULT_POINT_VALUE_PAISE = 50;
const DEFAULT_CATEGORIES = ['accessories', 'value_added_services'];

export const pointsFromBidPaise = (amountPaise, earnPointsPerHundred = DEFAULT_EARN_POINTS_PER_HUNDRED) => {
  const hundreds = Math.floor(Math.max(0, Number(amountPaise) || 0) / HUNDRED_RUPEES_PAISE);
  return hundreds * earnPointsPerHundred;
};

export const valuePaiseFromPoints = (points, pointValuePaise = DEFAULT_POINT_VALUE_PAISE) => (
  Math.max(0, Number(points) || 0) * pointValuePaise
);

export const normalizePhone = (value) => {
  const digits = String(value || '').replace(/\D/g, '');
  if (digits.length < 10) throw new ApiError(400, 'VALIDATION_ERROR', 'A 10-digit customer phone is required.');
  return digits.slice(-10);
};

const requireStaff = (actor) => {
  if (actor.role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Vendors cannot access customer rewards.');
};

const presentPolicy = (policy) => ({
  id: String(policy.id),
  version: policy.version,
  earnPointsPerHundredRupees: policy.earnPointsPerHundredRupees,
  pointValuePaise: policy.pointValuePaise,
  eligibleCategories: policy.eligibleCategories || [],
  expiryDays: policy.expiryDays || 0,
  redemptionScope: policy.redemptionScope,
  chainRedemptionEnabled: false,
  multiBranchRedemptionEnabled: false,
  futureScopesInactive: true,
  effectiveFrom: policy.effectiveFrom,
  note: policy.note || '',
});

const presentAccount = (account, branch) => ({
  id: String(account.id),
  customerPhone: account.customerPhone,
  customerName: account.customerName || '',
  branchId: String(account.branchId),
  branchName: branch?.name || '',
  chainId: String(account.chainId),
  pointsBalance: account.pointsBalance,
  issuedPoints: account.issuedPoints,
  redeemedPoints: account.redeemedPoints,
  outstandingValuePaise: valuePaiseFromPoints(account.pointsBalance, DEFAULT_POINT_VALUE_PAISE),
  redeemableAtThisBranch: true,
});

const idOf = (value) => (value ? String(value) : '');

const presentLedger = (entry, extras = {}) => ({
  id: entry.id ? String(entry.id) : (entry._id ? String(entry._id) : undefined),
  type: entry.type,
  points: entry.points,
  valuePaise: entry.valuePaise,
  balanceAfter: entry.balanceAfter,
  remainingPoints: entry.balanceAfter,
  customerPhone: extras.customerPhone || entry.customerPhone || '',
  customerName: extras.customerName || '',
  branchId: idOf(entry.branchId),
  branchName: extras.branchName || entry.branchName || '',
  dealId: extras.dealId || (entry.dealId ? String(entry.dealId) : ''),
  auctionRoundId: extras.auctionRoundId || '',
  deviceId: extras.deviceId || '',
  deviceModel: extras.deviceModel || '',
  deviceStorage: extras.deviceStorage || '',
  saleAmountPaise: extras.saleAmountPaise,
  invoiceNumber: entry.invoiceNumber || '',
  policyVersion: entry.policyVersion,
  earnPointsPerHundredRupees: entry.earnPointsPerHundredRupees,
  pointValuePaise: entry.pointValuePaise,
  reason: entry.reason || '',
  createdAt: entry.createdAt,
});

const presentHistory = (entry, extras = {}) => presentLedger(entry, extras);

const loadSaleMap = async (entries) => {
  const dealIds = [...new Set(entries.map((entry) => idOf(entry.dealId)).filter(isObjectId))];
  if (!dealIds.length) return {};
  const deals = await listDealsByIds(dealIds);
  const deviceIds = [...new Set(deals.map((deal) => idOf(deal.deviceId)).filter(Boolean))];
  const devices = deviceIds.length ? await listDevicesByIds(deviceIds) : [];
  const deviceMap = Object.fromEntries(devices.map((device) => [idOf(device.id), device]));
  return Object.fromEntries(deals.map((deal) => {
    const device = deviceMap[idOf(deal.deviceId)];
    return [idOf(deal.id), {
      dealId: idOf(deal.id),
      auctionRoundId: idOf(deal.auctionRoundId),
      deviceId: idOf(deal.deviceId),
      deviceModel: device?.model || '',
      deviceStorage: device?.storage || '',
      saleAmountPaise: deal.amountPaise,
      customerPhone: deal.customerPhone || '',
      customerName: deal.customerName || '',
    }];
  }));
};

const loadBranchNames = async (entries) => {
  const branchIds = [...new Set(entries.map((entry) => idOf(entry.branchId)).filter(Boolean))];
  const branches = await Promise.all(branchIds.map((id) => findBranchById(id)));
  return Object.fromEntries(branches.filter(Boolean).map((branch) => [idOf(branch.id), branch.name || '']));
};

const enrichEntries = async (entries, extras = {}) => {
  const [saleMap, branchNames] = await Promise.all([loadSaleMap(entries), extras.branchName ? Promise.resolve({}) : loadBranchNames(entries)]);
  return entries.map((entry) => {
    const sale = saleMap[idOf(entry.dealId)] || {};
    return presentLedger(entry, {
      branchName: extras.branchName || entry.branchName || branchNames[idOf(entry.branchId)] || '',
      customerPhone: extras.customerPhone || entry.customerPhone || sale.customerPhone || '',
      customerName: extras.customerName || extras.customerNames?.[entry.customerPhone] || extras.customerNames?.[sale.customerPhone] || sale.customerName || '',
      ...sale,
    });
  });
};

const recordCustomerHistory = async (phone, name, ledger, branch, session) => upsertRewardCustomerHistory(phone, {
  name,
  entry: {
    type: ledger.type,
    points: ledger.points,
    valuePaise: ledger.valuePaise,
    branchId: ledger.branchId,
    branchName: branch?.name || '',
    dealId: ledger.dealId,
    invoiceNumber: ledger.invoiceNumber || '',
    policyVersion: ledger.policyVersion,
    reason: ledger.reason,
    createdAt: ledger.createdAt || new Date(),
  },
}, session);

const defaultPolicyAttributes = (actor) => ({
  version: 1,
  earnPointsPerHundredRupees: DEFAULT_EARN_POINTS_PER_HUNDRED,
  pointValuePaise: DEFAULT_POINT_VALUE_PAISE,
  eligibleCategories: [...DEFAULT_CATEGORIES],
  expiryDays: 0,
  redemptionScope: 'branch_only',
  chainRedemptionEnabled: false,
  multiBranchRedemptionEnabled: false,
  effectiveFrom: now(),
  createdByAccountId: actor?.id,
  note: 'Initial branch-only policy',
});

export const ensureCurrentPolicy = async (actor, session) => {
  const existing = await findCurrentPolicy(session);
  if (existing) return existing;
  try {
    return await createPolicy(defaultPolicyAttributes(actor), session);
  } catch (error) {
    if (!duplicateError(error)) throw error;
    return findCurrentPolicy(session);
  }
};

const assertRedeemableAtBranch = (account, branchId) => {
  if (String(account.branchId) !== String(branchId)) {
    throw new ApiError(409, 'BRANCH_SCOPE', 'Rewards can only be redeemed at the issuing branch.');
  }
};

export const issueDealReward = async (instruction) => {
  const deal = await findDealById(instruction.dealId);
  if (!deal?.customerPhone) return null;
  const key = `reward-issue:${deal.id}`;
  const existing = await findRewardLedgerByKey(key);
  if (existing) return existing;
  const device = await findDeviceById(deal.deviceId);
  const branch = await findBranchById(deal.branchId);
  if (!branch) return null;
  return mongoose.connection.transaction(async (session) => {
    const replay = await findRewardLedgerByKey(key, session);
    if (replay) return replay;
    const policy = await ensureCurrentPolicy(null, session);
    const points = pointsFromBidPaise(deal.amountPaise, policy.earnPointsPerHundredRupees);
    if (points < 1) return null;
    const valuePaise = valuePaiseFromPoints(points, policy.pointValuePaise);
    let account = await findRewardAccount(deal.customerPhone, deal.branchId, session);
    if (!account) {
      account = await createRewardAccount({
        customerPhone: deal.customerPhone,
        customerName: deal.customerName || '',
        branchId: deal.branchId,
        chainId: branch.chainId,
        pointsBalance: 0,
        issuedPoints: 0,
        redeemedPoints: 0,
      }, session);
    }
    account.customerName = deal.customerName || account.customerName;
    account.pointsBalance += points;
    account.issuedPoints += points;
    await saveRewardAccount(account, session);
    const ledger = await createRewardLedger({
      rewardAccountId: account.id,
      customerPhone: deal.customerPhone,
      branchId: deal.branchId,
      type: 'earn',
      points,
      valuePaise,
      balanceAfter: account.pointsBalance,
      dealId: deal.id,
      paymentInstructionId: instruction.id,
      idempotencyKey: key,
      policyVersion: policy.version,
      earnPointsPerHundredRupees: policy.earnPointsPerHundredRupees,
      pointValuePaise: policy.pointValuePaise,
      actorId: device?.createdByAccountId,
      reason: 'paid_deal',
    }, session);
    try {
      await createOutboxEvent({
        topic: 'reward.issued',
        aggregateType: 'reward_ledger',
        aggregateId: String(ledger.id),
        idempotencyKey: `reward-issued:${deal.id}`,
        payload: { dealId: String(deal.id), points, branchId: String(deal.branchId) },
      }, { session });
    } catch (error) {
      if (!duplicateError(error)) throw error;
    }
    if (device?.createdByAccountId) {
      await createAuditEvent({
        actorId: device.createdByAccountId,
        actorRole: 'store_manager',
        action: 'reward.issued',
        entityType: 'reward_ledger',
        entityId: String(ledger.id),
        storeId: deal.branchId,
        metadata: { dealId: String(deal.id), points, policyVersion: policy.version },
      }, { session });
    }
    await recordCustomerHistory(deal.customerPhone, deal.customerName || account.customerName, ledger, branch, session);
    return ledger;
  });
};

export const readRewardPolicy = async (actor) => {
  requireStaff(actor);
  const current = await ensureCurrentPolicy(actor);
  const versions = await listPolicies();
  return { current: presentPolicy(current), versions: versions.map(presentPolicy) };
};

export const publishRewardPolicy = async (actor, body) => {
  requireStaff(actor);
  if (actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can change reward policy.');
  }
  const redemptionScope = String(body?.redemptionScope || 'branch_only');
  const chainRedemptionEnabled = Boolean(body?.chainRedemptionEnabled);
  const multiBranchRedemptionEnabled = Boolean(body?.multiBranchRedemptionEnabled);
  if (redemptionScope !== 'branch_only' || chainRedemptionEnabled || multiBranchRedemptionEnabled) {
    throw new ApiError(409, 'POLICY_SCOPE_INACTIVE', 'Chain and multi-branch redemption stay inactive in this release.');
  }
  const earnPointsPerHundredRupees = Number(body?.earnPointsPerHundredRupees ?? DEFAULT_EARN_POINTS_PER_HUNDRED);
  const pointValuePaise = Number(body?.pointValuePaise ?? DEFAULT_POINT_VALUE_PAISE);
  if (!Number.isInteger(earnPointsPerHundredRupees) || earnPointsPerHundredRupees < 1) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Earn rate must be a positive integer.');
  }
  if (!Number.isInteger(pointValuePaise) || pointValuePaise < 1) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Point value must be a positive integer in paise.');
  }
  const categories = Array.isArray(body?.eligibleCategories) && body.eligibleCategories.length
    ? body.eligibleCategories.map((item) => String(item).trim()).filter(Boolean)
    : [...DEFAULT_CATEGORIES];
  const expiryDays = Number(body?.expiryDays ?? 0);
  if (!Number.isInteger(expiryDays) || expiryDays < 0) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Expiry days must be zero or a positive integer.');
  }
  const policy = await createPolicy({
    version: await nextPolicyVersion(),
    earnPointsPerHundredRupees,
    pointValuePaise,
    eligibleCategories: categories,
    expiryDays,
    redemptionScope: 'branch_only',
    chainRedemptionEnabled: false,
    multiBranchRedemptionEnabled: false,
    effectiveFrom: body?.effectiveFrom ? new Date(body.effectiveFrom) : now(),
    createdByAccountId: actor.id,
    note: typeof body?.note === 'string' ? body.note.trim() : '',
  });
  await createAuditEvent({
    actorId: actor.id,
    actorRole: actor.role,
    action: 'reward.policy.published',
    entityType: 'reward_policy',
    entityId: String(policy.id),
    metadata: { version: policy.version, earnPointsPerHundredRupees, pointValuePaise },
  });
  const versions = await listPolicies();
  return { current: presentPolicy(policy), versions: versions.map(presentPolicy) };
};

export const listRewardOverview = async (actor, query = {}) => {
  requireStaff(actor);
  const scope = await loadScope(actor);
  const filter = {};
  if (query.branchId) {
    assertBranchInScope(scope, query.branchId);
    filter.branchId = query.branchId;
  } else if (!scope.all) {
    filter.branchId = { $in: scope.branchIds };
  }
  const accounts = await listRewardAccounts(filter);
  const byBranch = new Map();
  for (const account of accounts) {
    const key = String(account.branchId);
    const current = byBranch.get(key) || {
      branchId: key, issuedPoints: 0, redeemedPoints: 0, outstandingPoints: 0,
      customerCount: 0, redeemedCustomerCount: 0,
    };
    current.issuedPoints += account.issuedPoints;
    current.redeemedPoints += account.redeemedPoints;
    current.outstandingPoints += account.pointsBalance;
    current.customerCount += 1;
    if (account.redeemedPoints > 0) current.redeemedCustomerCount += 1;
    byBranch.set(key, current);
  }
  const branches = await Promise.all([...byBranch.values()].map(async (row) => {
    const branch = await findBranchById(row.branchId);
    return {
      ...row,
      branchName: branch?.name || '',
      issuedValuePaise: valuePaiseFromPoints(row.issuedPoints),
      redeemedValuePaise: valuePaiseFromPoints(row.redeemedPoints),
      outstandingValuePaise: valuePaiseFromPoints(row.outstandingPoints),
    };
  }));
  const totals = branches.reduce((sum, row) => ({
    issuedPoints: sum.issuedPoints + row.issuedPoints,
    redeemedPoints: sum.redeemedPoints + row.redeemedPoints,
    outstandingPoints: sum.outstandingPoints + row.outstandingPoints,
    issuedValuePaise: sum.issuedValuePaise + row.issuedValuePaise,
    redeemedValuePaise: sum.redeemedValuePaise + row.redeemedValuePaise,
    outstandingValuePaise: sum.outstandingValuePaise + row.outstandingValuePaise,
  }), {
    issuedPoints: 0, redeemedPoints: 0, outstandingPoints: 0,
    issuedValuePaise: 0, redeemedValuePaise: 0, outstandingValuePaise: 0,
  });
  const policy = await ensureCurrentPolicy(actor);
  return { branches, totals, policy: presentPolicy(policy) };
};

export const readCustomerRewards = async (actor, phone, query = {}) => {
  requireStaff(actor);
  const normalized = normalizePhone(phone);
  const scope = await loadScope(actor);
  let branchIds = scope.all ? null : scope.branchIds;
  if (query.branchId) {
    assertBranchInScope(scope, query.branchId);
    branchIds = [query.branchId];
  }
  const accounts = await listRewardAccountsByPhone(normalized, branchIds);
  const presented = await Promise.all(accounts.map(async (account) => {
    const branch = await findBranchById(account.branchId);
    return presentAccount(account, branch);
  }));
  const ledgerFilter = { customerPhone: normalized };
  if (branchIds) ledgerFilter.branchId = { $in: branchIds };
  const entries = await listRewardLedger(ledgerFilter);
  let customer = await findRewardCustomer(normalized);
  if (!customer && entries.length) {
    customer = await createRewardCustomer({
      phone: normalized,
      name: presented[0]?.customerName || '',
      lastRewardedAt: entries[0]?.createdAt || new Date(),
      history: entries.map((entry) => ({
        type: entry.type,
        points: entry.points,
        valuePaise: entry.valuePaise,
        branchId: entry.branchId,
        branchName: presented.find((row) => row.branchId === String(entry.branchId))?.branchName || '',
        dealId: entry.dealId,
        invoiceNumber: entry.invoiceNumber || '',
        policyVersion: entry.policyVersion,
        reason: entry.reason,
        createdAt: entry.createdAt,
      })),
    });
  }
  const customerName = customer?.name || presented[0]?.customerName || '';
  const extras = { customerName, customerPhone: normalized };
  const presentedEntries = await enrichEntries(entries, extras);
  const presentedHistory = await enrichEntries(customer?.history || [], extras);
  const issuedPoints = presented.reduce((sum, row) => sum + (row.issuedPoints || 0), 0);
  const redeemedPoints = presented.reduce((sum, row) => sum + (row.redeemedPoints || 0), 0);
  const outstandingPoints = presented.reduce((sum, row) => sum + (row.pointsBalance || 0), 0);
  return {
    phone: normalized,
    customerName,
    issuedPoints,
    redeemedPoints,
    outstandingPoints,
    outstandingValuePaise: valuePaiseFromPoints(outstandingPoints),
    redeemCount: presentedEntries.filter((entry) => entry.type === 'redeem').length,
    earnCount: presentedEntries.filter((entry) => entry.type === 'earn').length,
    balances: presented,
    entries: presentedEntries,
    history: presentedHistory,
  };
};

export const readBranchRewards = async (actor, branchId) => {
  requireStaff(actor);
  const id = requireObjectId(branchId, 'branch id');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, String(id));
  const branch = await findBranchById(id);
  if (!branch) throw new ApiError(404, 'NOT_FOUND', 'Branch was not found.');
  const accounts = await listRewardAccounts({ branchId: id });
  const presented = accounts.map((account) => presentAccount(account, branch));
  const entries = await enrichEntries(await listRewardLedger({ branchId: id }), {
    branchName: branch.name || '',
    customerNames: Object.fromEntries(accounts.map((account) => [account.customerPhone, account.customerName || ''])),
  });
  const issuedPoints = presented.reduce((sum, row) => sum + (row.issuedPoints || 0), 0);
  const redeemedPoints = presented.reduce((sum, row) => sum + (row.redeemedPoints || 0), 0);
  const outstandingPoints = presented.reduce((sum, row) => sum + (row.pointsBalance || 0), 0);
  return {
    branchId: String(branch.id),
    branchName: branch.name || '',
    issuedPoints,
    redeemedPoints,
    outstandingPoints,
    issuedValuePaise: valuePaiseFromPoints(issuedPoints),
    redeemedValuePaise: valuePaiseFromPoints(redeemedPoints),
    outstandingValuePaise: valuePaiseFromPoints(outstandingPoints),
    customerCount: presented.length,
    redeemedCustomerCount: presented.filter((row) => (row.redeemedPoints || 0) > 0).length,
    customers: presented,
    entries,
  };
};

export const listRecentRewardCustomers = async (actor, query = {}) => {
  requireStaff(actor);
  const scope = await loadScope(actor);
  const page = Math.max(1, Number.parseInt(String(query.page ?? '1'), 10) || 1);
  const limit = 40;
  const match = {};
  if (query.branchId) {
    assertBranchInScope(scope, query.branchId);
    match.branchId = requireObjectId(query.branchId, 'branch id');
  } else if (!scope.all) {
    match.branchId = { $in: scope.branchIds.map((id) => requireObjectId(id, 'branch id')) };
  }
  const [facet] = await aggregateRecentRewardCustomers(match, (page - 1) * limit, limit);
  const total = facet?.total?.[0]?.count ?? 0;
  const rows = facet?.items ?? [];
  const customers = await listRewardCustomersByPhone(rows.map((row) => row._id));
  const byPhone = Object.fromEntries(customers.map((row) => [row.phone, row]));
  return {
    page,
    limit,
    total,
    items: rows.map((row) => ({
      phone: row._id,
      customerName: byPhone[row._id]?.name || row.customerName || '',
      lastRewardedAt: row.lastRewardedAt,
      outstandingPoints: row.outstandingPoints,
      issuedPoints: row.issuedPoints,
      redeemedPoints: row.redeemedPoints,
      history: (byPhone[row._id]?.history || []).map(presentHistory),
    })),
  };
};

export const assertBranchRewardAccess = (account, branchId) => assertRedeemableAtBranch(account, branchId);

const STUB_REDEEM_OTP = '123456';
const OTP_MINUTES = 5;
const OTP_MAX_ATTEMPTS = 5;

const requireManagerBranch = async (actor, requestedBranchId) => {
  requireStaff(actor);
  const scope = await loadScope(actor);
  if (requestedBranchId) {
    assertBranchInScope(scope, requestedBranchId);
    return requestedBranchId;
  }
  if (actor.role === 'store_manager') {
    if (!scope.branchIds.length) throw new ApiError(403, 'STORE_SCOPE_DENIED', 'This store is outside your assigned access.');
    return scope.branchIds[0];
  }
  throw new ApiError(400, 'VALIDATION_ERROR', 'A branch is required.');
};

const maskPhone = (phone) => `•••• ${String(phone).slice(-4)}`;

const presentRedemption = (row, extras = {}) => ({
  id: String(row.id),
  customerPhone: row.customerPhone,
  customerPhoneMasked: maskPhone(row.customerPhone),
  customerName: row.customerName || '',
  branchId: String(row.branchId),
  invoiceNumber: row.invoiceNumber,
  category: row.category,
  billAmountPaise: row.billAmountPaise,
  discountPaise: row.discountPaise,
  points: row.points,
  remainingPoints: row.remainingPoints,
  remainingValuePaise: valuePaiseFromPoints(row.remainingPoints),
  status: row.status,
  duplicateInvoice: Boolean(row.duplicateInvoice),
  otpRequired: row.status === 'pending_otp',
  redeemedAt: row.redeemedAt || null,
  reminder: 'Apply this discount in the store billing software. SafeDealz does not change the bill.',
  ...extras,
});

const issueOtp = async (row) => {
  const nonce = opaqueId();
  row.otpNonce = nonce;
  row.otpDigest = digestToken(`${STUB_REDEEM_OTP}:${row.bindKey}:${nonce}`);
  row.otpSentAt = now();
  row.otpExpiresAt = addMinutes(now(), OTP_MINUTES);
  row.otpSendCount = (row.otpSendCount || 0) + 1;
  await saveRedemption(row);
  return row;
};

export const listBranchRedemptions = async (actor, query = {}) => {
  const branchId = await requireManagerBranch(actor, query.branchId);
  const rows = await listRedemptions({ branchId, status: query.status || { $in: ['pending_otp', 'redeemed'] } });
  return rows.map((row) => presentRedemption(row));
};

export const startRedemption = async (actor, body) => {
  const branchId = await requireManagerBranch(actor, body?.branchId);
  const phone = normalizePhone(body?.customerPhone || body?.phone);
  const invoiceNumber = String(body?.invoiceNumber || '').trim();
  const category = String(body?.category || '').trim();
  const billAmountPaise = Number(body?.billAmountPaise);
  const discountPaise = Number(body?.discountPaise);
  if (!invoiceNumber) throw new ApiError(400, 'VALIDATION_ERROR', 'An invoice number is required.');
  if (!Number.isInteger(billAmountPaise) || billAmountPaise < 1) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Bill amount must be a positive integer in paise.');
  }
  if (!Number.isInteger(discountPaise) || discountPaise < 1) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Discount amount must be a positive integer in paise.');
  }
  const policy = await ensureCurrentPolicy(actor);
  if (!(policy.eligibleCategories || []).includes(category)) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Choose an eligible reward category.');
  }
  if (discountPaise % policy.pointValuePaise !== 0) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Discount must use whole reward points.');
  }
  if (discountPaise > billAmountPaise) {
    throw new ApiError(409, 'OVER_BILL', 'Discount cannot exceed the bill amount.');
  }
  const account = await findRewardAccount(phone, branchId);
  if (!account) throw new ApiError(404, 'NOT_FOUND', 'No rewards at this branch.');
  assertRedeemableAtBranch(account, branchId);
  const points = discountPaise / policy.pointValuePaise;
  if (points > account.pointsBalance) {
    throw new ApiError(409, 'INSUFFICIENT_POINTS', 'This customer does not have enough points at this branch.');
  }
  const bindKey = `${phone}|${branchId}|${invoiceNumber}|${discountPaise}`;
  await expirePendingRedemptions({ customerPhone: phone, branchId, bindKey: { $ne: bindKey } });
  const duplicateInvoice = Boolean((await listRedemptions({ branchId, invoiceNumber, status: 'redeemed' })).length);
  let row = (await listRedemptions({ customerPhone: phone, branchId, bindKey, status: 'pending_otp' }))[0];
  if (row) {
    if (row.otpSentAt && now() < addMinutes(row.otpSentAt, 1) && row.otpSendCount > 0) {
      throw new ApiError(429, 'OTP_COOLDOWN', 'Wait before resending the redemption code.');
    }
    row.invoiceNumber = invoiceNumber;
    row.category = category;
    row.billAmountPaise = billAmountPaise;
    row.discountPaise = discountPaise;
    row.points = points;
    row.remainingPoints = account.pointsBalance;
    row.duplicateInvoice = duplicateInvoice;
    row.otpAttempts = row.otpAttempts || 0;
    await issueOtp(row);
    return presentRedemption(row, { stub: true });
  }
  row = await createRedemptionRow({
    customerPhone: phone,
    customerName: account.customerName || '',
    branchId,
    rewardAccountId: account.id,
    managerAccountId: actor.id,
    invoiceNumber,
    category,
    billAmountPaise,
    discountPaise,
    points,
    remainingPoints: account.pointsBalance,
    bindKey,
    duplicateInvoice,
    status: 'pending_otp',
  });
  await issueOtp(row);
  return presentRedemption(row, { stub: true });
};

export const resendRedemptionOtp = async (actor, id) => {
  const row = await findRedemptionById(requireObjectId(id, 'redemption id'));
  if (!row) throw new ApiError(404, 'NOT_FOUND', 'Redemption was not found.');
  await requireManagerBranch(actor, String(row.branchId));
  if (row.status === 'redeemed') return presentRedemption(row, { replayed: true });
  if (row.otpSentAt && now() < addMinutes(row.otpSentAt, 1)) {
    throw new ApiError(429, 'OTP_COOLDOWN', 'Wait before resending the redemption code.');
  }
  await issueOtp(row);
  return presentRedemption(row, { stub: true });
};

export const confirmRedemption = async (actor, id, body) => {
  const row = await findRedemptionById(requireObjectId(id, 'redemption id'));
  if (!row) throw new ApiError(404, 'NOT_FOUND', 'Redemption was not found.');
  await requireManagerBranch(actor, String(row.branchId));
  if (row.status === 'redeemed') return presentRedemption(row, { replayed: true });
  const otp = String(body?.otp || '').trim();
  if (!row.otpExpiresAt || now().getTime() > new Date(row.otpExpiresAt).getTime()) {
    throw new ApiError(409, 'OTP_EXPIRED', 'The redemption code has expired.');
  }
  if ((row.otpAttempts || 0) >= OTP_MAX_ATTEMPTS) {
    throw new ApiError(409, 'OTP_LOCKED', 'Too many incorrect redemption codes.');
  }
  const expected = digestToken(`${otp}:${row.bindKey}:${row.otpNonce}`);
  if (!otp || expected !== row.otpDigest) {
    row.otpAttempts = (row.otpAttempts || 0) + 1;
    await saveRedemption(row);
    throw new ApiError(400, 'VALIDATION_ERROR', 'The verification code is incorrect.');
  }
  const policy = await ensureCurrentPolicy(actor);
  try {
    await mongoose.connection.transaction(async (session) => {
      const current = await findRedemptionById(row.id, session);
      if (current.status === 'redeemed') return;
      const account = await findRewardAccount(current.customerPhone, current.branchId, session);
      if (!account) throw new ApiError(404, 'NOT_FOUND', 'No rewards at this branch.');
      assertRedeemableAtBranch(account, current.branchId);
      if (current.points > account.pointsBalance) {
        throw new ApiError(409, 'INSUFFICIENT_POINTS', 'This customer does not have enough points at this branch.');
      }
      const key = `reward-redeem:${current.id}`;
      const existingLedger = await findRewardLedgerByKey(key, session);
      if (existingLedger) {
        current.status = 'redeemed';
        current.redeemedAt = current.redeemedAt || now();
        current.remainingPoints = account.pointsBalance;
        await saveRedemption(current, session);
        return;
      }
      account.pointsBalance -= current.points;
      account.redeemedPoints += current.points;
      await saveRewardAccount(account, session);
      current.status = 'redeemed';
      current.redeemedAt = now();
      current.remainingPoints = account.pointsBalance;
      current.otpDigest = '';
      await saveRedemption(current, session);
      await createRewardLedger({
        rewardAccountId: account.id,
        customerPhone: account.customerPhone,
        branchId: current.branchId,
        type: 'redeem',
        points: current.points,
        valuePaise: current.discountPaise,
        balanceAfter: account.pointsBalance,
        invoiceNumber: current.invoiceNumber,
        idempotencyKey: key,
        policyVersion: policy.version,
        earnPointsPerHundredRupees: policy.earnPointsPerHundredRupees,
        pointValuePaise: policy.pointValuePaise,
        actorId: actor.id,
        reason: 'redemption',
      }, session);
      const branch = await findBranchById(current.branchId);
      await recordCustomerHistory(account.customerPhone, account.customerName, {
        type: 'redeem',
        points: current.points,
        valuePaise: current.discountPaise,
        branchId: current.branchId,
        invoiceNumber: current.invoiceNumber,
        policyVersion: policy.version,
        reason: 'redemption',
        createdAt: now(),
      }, branch, session);
      await createAuditEvent({
        actorId: actor.id,
        actorRole: actor.role,
        action: 'reward.redeemed',
        entityType: 'reward_redemption',
        entityId: String(current.id),
        storeId: current.branchId,
        metadata: { points: current.points, invoiceNumber: current.invoiceNumber },
      }, { session });
    });
  } catch (error) {
    if (duplicateError(error)) {
      const replay = await findRedemptionById(row.id);
      return presentRedemption(replay, { replayed: true });
    }
    throw error;
  }
  return presentRedemption(await findRedemptionById(row.id));
};

export const readRedemption = async (actor, id) => {
  const row = await findRedemptionById(requireObjectId(id, 'redemption id'));
  if (!row) throw new ApiError(404, 'NOT_FOUND', 'Redemption was not found.');
  await requireManagerBranch(actor, String(row.branchId));
  return presentRedemption(row);
};

