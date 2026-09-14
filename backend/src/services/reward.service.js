import mongoose from 'mongoose';
import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { findBranchById } from '../repositories/branch.repository.js';
import { findDealById } from '../repositories/deal.repository.js';
import { findDeviceById } from '../repositories/device.repository.js';
import { createOutboxEvent } from '../repositories/outbox-event.repository.js';
import {
  createPolicy,
  createRedemptionRow,
  createRewardAccount,
  createRewardLedger,
  expirePendingRedemptions,
  findCurrentPolicy,
  findRedemptionById,
  findRewardAccount,
  findRewardLedgerByKey,
  listPolicies,
  listRedemptions,
  listRewardAccounts,
  listRewardAccountsByPhone,
  listRewardLedger,
  nextPolicyVersion,
  saveRedemption,
  saveRewardAccount,
} from '../repositories/reward.repository.js';
import { ApiError } from '../utils/api-error.js';
import { digestToken, opaqueId } from '../utils/auth-crypto.js';
import { addMinutes, now } from '../utils/clock.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
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

const presentLedger = (entry) => ({
  id: String(entry.id),
  type: entry.type,
  points: entry.points,
  valuePaise: entry.valuePaise,
  balanceAfter: entry.balanceAfter,
  branchId: String(entry.branchId),
  dealId: entry.dealId ? String(entry.dealId) : '',
  invoiceNumber: entry.invoiceNumber || '',
  policyVersion: entry.policyVersion,
  earnPointsPerHundredRupees: entry.earnPointsPerHundredRupees,
  pointValuePaise: entry.pointValuePaise,
  reason: entry.reason,
  createdAt: entry.createdAt,
});

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
    };
    current.issuedPoints += account.issuedPoints;
    current.redeemedPoints += account.redeemedPoints;
    current.outstandingPoints += account.pointsBalance;
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
  return {
    phone: normalized,
    customerName: presented[0]?.customerName || '',
    balances: presented,
    entries: entries.map(presentLedger),
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

