import { createOutboxEvent } from '../repositories/outbox-event.repository.js';
import { findBidById } from '../repositories/bid.repository.js';
import { findDealById, findPaymentById, findPaymentByTransferId, listPayments, saveDeal, savePaymentInstruction } from '../repositories/deal.repository.js';
import { findDeviceById, saveDevice } from '../repositories/device.repository.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { assertBranchInScope, loadScope } from './scope.service.js';
import { issueDealReward } from './reward.service.js';
import { notifyPaidDeal } from './notification.service.js';
import { settleReservation } from './wallet.service.js';
import { createStorePayout, verifyPayoutSignature } from './payout.adapter.js';

const appendAttempt = (instruction, event, status, note = '') => {
  instruction.attempts = [...(instruction.attempts || []), { at: new Date(), event, status, note }];
};

export const presentPayment = (row) => row ? ({
  id: String(row.id),
  dealId: String(row.dealId),
  branchId: String(row.branchId),
  status: row.status,
  amountPaise: row.amountPaise,
  feePaise: row.feePaise,
  beneficiaryName: row.beneficiaryName,
  accountNumberMasked: row.accountNumberMasked,
  ifsc: row.ifsc,
  providerTransferId: row.providerTransferId || '',
  providerStatus: row.providerStatus || '',
  attempts: row.attempts || [],
}) : null;

const requirePayment = async (actor, id) => {
  if (actor.role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Vendors cannot view store payouts.');
  const instruction = await findPaymentById(requireObjectId(id, 'payment id'));
  if (!instruction) throw new ApiError(404, 'NOT_FOUND', 'Payment instruction was not found.');
  const scope = await loadScope(actor);
  assertBranchInScope(scope, instruction.branchId);
  return instruction;
};

export const startPayout = async (instruction) => {
  if (instruction.status === 'paid') return instruction;
  if (instruction.status === 'awaiting_customer_verification') {
    throw new ApiError(409, 'KYC_REQUIRED', 'Customer verification is required before payout.');
  }
  if (instruction.status === 'unknown') {
    throw new ApiError(409, 'RECONCILE_REQUIRED', 'Reconcile the unknown payout outcome before retry.');
  }
  if (instruction.status === 'processing' && instruction.providerTransferId) return instruction;
  if (!['ready_for_transfer', 'needs_attention'].includes(instruction.status)) {
    throw new ApiError(409, 'CONFLICT', 'This payment cannot be submitted.');
  }
  const transfer = createStorePayout({
    idempotencyKey: instruction.idempotencyKey,
    amountPaise: instruction.amountPaise,
  });
  instruction.providerTransferId = transfer.id;
  instruction.providerStatus = 'processing';
  instruction.status = 'processing';
  appendAttempt(instruction, 'submitted', 'processing', 'Stub provider transfer submitted');
  await savePaymentInstruction(instruction);
  try {
    await createOutboxEvent({
      topic: 'payout.submitted',
      aggregateType: 'payment_instruction',
      aggregateId: String(instruction.id),
      idempotencyKey: `payout-submitted:${instruction.id}:${transfer.id}:${(instruction.attempts || []).length}`,
      payload: { paymentId: String(instruction.id), transferId: transfer.id },
    });
  } catch (error) {
    if (!duplicateError(error)) throw error;
  }
  return instruction;
};

const applyProcessed = async (instruction) => {
  const deal = await findDealById(instruction.dealId);
  const bid = deal ? await findBidById(deal.bidId) : null;
  const reservationKey = instruction.reservationIdempotencyKey || bid?.reservationIdempotencyKey;
  if (reservationKey) await settleReservation({ idempotencyKey: reservationKey });
  instruction.status = 'paid';
  instruction.providerStatus = 'processed';
  appendAttempt(instruction, 'processed', 'paid', 'Provider reported success');
  await savePaymentInstruction(instruction);
  if (deal && deal.status !== 'paid') {
    deal.status = 'paid';
    await saveDeal(deal);
  }
  const device = deal ? await findDeviceById(deal.deviceId) : null;
  if (device && device.status !== 'awaiting_pickup' && device.status !== 'picked_up') {
    device.status = 'awaiting_pickup';
    await saveDevice(device);
  }
  await createOutboxEvent({
    topic: 'payout.paid',
    aggregateType: 'payment_instruction',
    aggregateId: String(instruction.id),
    idempotencyKey: `payout-paid:${instruction.id}`,
    payload: { paymentId: String(instruction.id), dealId: String(instruction.dealId) },
  });
  await issueDealReward(instruction);
  await notifyPaidDeal(instruction);
  return instruction;
};

export const applyProviderOutcome = async (instruction, outcome, event = outcome) => {
  if (instruction.status === 'paid') {
    await issueDealReward(instruction);
    return { instruction, replayed: true, paid: true };
  }
  if (outcome === 'processed') {
    const updated = await applyProcessed(instruction);
    return { instruction: updated, replayed: false, paid: true };
  }
  if (outcome === 'failed') {
    instruction.status = 'needs_attention';
    instruction.providerStatus = 'failed';
    appendAttempt(instruction, event, 'needs_attention', 'Provider reported failure; funds stay committed');
    await savePaymentInstruction(instruction);
    await createOutboxEvent({
      topic: 'payout.failed',
      aggregateType: 'payment_instruction',
      aggregateId: String(instruction.id),
      idempotencyKey: `payout-failed:${instruction.id}:${(instruction.attempts || []).length}`,
      payload: { paymentId: String(instruction.id) },
    });
    return { instruction, replayed: false, paid: false };
  }
  instruction.status = 'unknown';
  instruction.providerStatus = 'unknown';
  appendAttempt(instruction, event, 'unknown', 'Provider outcome is unknown; reconcile before retry');
  await savePaymentInstruction(instruction);
  return { instruction, replayed: false, paid: false };
};

export const handlePayoutWebhook = async (rawBody, signature) => {
  const raw = Buffer.isBuffer(rawBody) ? rawBody : Buffer.from(String(rawBody || ''));
  if (!verifyPayoutSignature(raw, signature)) {
    throw new ApiError(401, 'INVALID_SIGNATURE', 'The payout webhook signature is invalid.');
  }
  let body;
  try { body = JSON.parse(raw.toString('utf8')); } catch {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Webhook payload must be JSON.');
  }
  const transferId = body?.payload?.id || body?.payload?.transfer?.id;
  if (!transferId) throw new ApiError(400, 'VALIDATION_ERROR', 'A provider transfer id is required.');
  const instruction = await findPaymentByTransferId(transferId);
  if (!instruction) throw new ApiError(404, 'NOT_FOUND', 'Payment instruction was not found.');
  const event = String(body.event || '');
  const outcome = event === 'payout.processed' || event === 'payout.paid' ? 'processed'
    : event === 'payout.failed' ? 'failed'
    : 'unknown';
  return applyProviderOutcome(instruction, outcome, event || outcome);
};

export const listVisiblePayments = async (actor) => {
  if (actor.role === 'vendor') throw new ApiError(403, 'FORBIDDEN', 'Vendors cannot view store payouts.');
  const scope = await loadScope(actor);
  const filter = scope.all ? {} : { branchId: { $in: scope.branchIds } };
  const rows = await listPayments(filter);
  return rows.map(presentPayment);
};

export const readPayment = async (actor, id) => presentPayment(await requirePayment(actor, id));

export const retryPayment = async (actor, id) => {
  const instruction = await requirePayment(actor, id);
  return presentPayment(await startPayout(instruction));
};

export const reconcilePayment = async (actor, id, body) => {
  if (actor.role === 'vendor' || actor.role === 'store_manager') {
    throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin or Admin can reconcile payouts.');
  }
  const instruction = await requirePayment(actor, id);
  const outcome = String(body?.outcome || '').trim();
  if (outcome !== 'processed' && outcome !== 'failed') {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Reconcile outcome must be processed or failed.');
  }
  if (instruction.status === 'paid' && outcome === 'processed') {
    return { payment: presentPayment(instruction), replayed: true };
  }
  if (instruction.status !== 'unknown' && instruction.providerStatus !== 'unknown') {
    throw new ApiError(409, 'CONFLICT', 'Only unknown payouts can be reconciled.');
  }
  const result = await applyProviderOutcome(instruction, outcome, 'reconcile');
  return { payment: presentPayment(result.instruction), replayed: result.replayed };
};
