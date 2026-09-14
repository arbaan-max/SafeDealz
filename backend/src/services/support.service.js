import { randomUUID } from 'node:crypto';
import { env } from '../config/env.js';
import { findAccountById, listAccounts } from '../repositories/account.repository.js';
import { findAuctionById } from '../repositories/auction.repository.js';
import { findBidById } from '../repositories/bid.repository.js';
import { findDealById, findPaymentById } from '../repositories/deal.repository.js';
import { findDeviceById } from '../repositories/device.repository.js';
import { createAuditEvent } from '../repositories/audit-event.repository.js';
import { findRedemptionById } from '../repositories/reward.repository.js';
import { createTicket, findOpenTicket, findTicketById, findTicketByKey, listTickets, saveTicket } from '../repositories/support.repository.js';
import { ApiError } from '../utils/api-error.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { notifyEvent } from './notification.service.js';
import { assertObjectUploaded, signObjectAccess } from './r2.adapter.js';
import { assertBranchInScope, loadScope } from './scope.service.js';

const reasons = new Set(['payment_issue', 'pickup_issue', 'device_issue', 'redemption_issue', 'bid_issue', 'other']);
const subjectTypes = new Set(['device', 'deal', 'payment', 'bid', 'redemption']);
const imageTypes = new Set(['image/jpeg', 'image/png', 'application/pdf']);

const presentNote = (note) => ({
  id: String(note.id),
  authorAccountId: String(note.authorAccountId),
  authorRole: note.authorRole,
  body: note.body,
  createdAt: note.createdAt,
});

const presentAttachment = (row) => ({
  id: String(row.id),
  objectKey: row.objectKey,
  contentType: row.contentType,
  sizeBytes: row.sizeBytes,
  status: row.status,
});

export const presentTicket = (row) => ({
  id: String(row.id),
  creatorAccountId: String(row.creatorAccountId),
  creatorRole: row.creatorRole,
  subjectType: row.subjectType,
  subjectId: String(row.subjectId),
  branchId: String(row.branchId),
  reasonCode: row.reasonCode,
  status: row.status,
  ownerAccountId: row.ownerAccountId ? String(row.ownerAccountId) : '',
  notes: (row.notes || []).map(presentNote),
  attachments: (row.attachments || []).map(presentAttachment),
  createdAt: row.createdAt,
  updatedAt: row.updatedAt,
});

const requireTicket = async (id) => {
  const row = await findTicketById(requireObjectId(id, 'ticket id'));
  if (!row) throw new ApiError(404, 'NOT_FOUND', 'Support ticket was not found.');
  return row;
};

const assertCanRead = async (actor, ticket) => {
  if (actor.role === 'store_manager' || actor.role === 'vendor') {
    if (String(ticket.creatorAccountId) !== String(actor.id)) {
      throw new ApiError(403, 'FORBIDDEN', 'You cannot read another account’s tickets.');
    }
    return;
  }
  if (actor.role === 'super_admin') return;
  if (actor.role === 'admin') {
    const scope = await loadScope(actor);
    assertBranchInScope(scope, ticket.branchId);
    return;
  }
  throw new ApiError(403, 'FORBIDDEN', 'You cannot read this ticket.');
};

const resolveSubject = async (actor, subjectType, subjectId) => {
  if (!subjectTypes.has(subjectType)) throw new ApiError(400, 'VALIDATION_ERROR', 'Choose a supported ticket subject.');
  const id = requireObjectId(subjectId, 'subject id');
  const scope = await loadScope(actor);
  if (subjectType === 'deal') {
    const deal = await findDealById(id);
    if (!deal) throw new ApiError(404, 'NOT_FOUND', 'Deal was not found.');
    if (actor.role === 'vendor' && String(deal.vendorAccountId) !== String(actor.id)) {
      throw new ApiError(403, 'FORBIDDEN', 'You can only open a ticket on your own purchase.');
    }
    if (actor.role === 'store_manager') assertBranchInScope(scope, deal.branchId);
    return { subjectId: deal.id, branchId: deal.branchId };
  }
  if (subjectType === 'payment') {
    const payment = await findPaymentById(id);
    if (!payment) throw new ApiError(404, 'NOT_FOUND', 'Payment was not found.');
    const deal = await findDealById(payment.dealId);
    if (!deal) throw new ApiError(404, 'NOT_FOUND', 'Deal was not found.');
    if (actor.role === 'vendor' && String(deal.vendorAccountId) !== String(actor.id)) {
      throw new ApiError(403, 'FORBIDDEN', 'You can only open a ticket on your own purchase.');
    }
    if (actor.role === 'store_manager') assertBranchInScope(scope, deal.branchId);
    return { subjectId: payment.id, branchId: deal.branchId };
  }
  if (subjectType === 'bid') {
    const bid = await findBidById(id);
    if (!bid) throw new ApiError(404, 'NOT_FOUND', 'Bid was not found.');
    if (actor.role !== 'vendor' || String(bid.vendorAccountId) !== String(actor.id)) {
      throw new ApiError(403, 'FORBIDDEN', 'You can only open a ticket on your own bid.');
    }
    const round = await findAuctionById(bid.roundId);
    const device = await findDeviceById(bid.deviceId);
    const branchId = round?.branchId || device?.branchId;
    if (!branchId) throw new ApiError(404, 'NOT_FOUND', 'Bid store was not found.');
    return { subjectId: bid.id, branchId };
  }
  if (subjectType === 'device') {
    const device = await findDeviceById(id);
    if (!device) throw new ApiError(404, 'NOT_FOUND', 'Device was not found.');
    if (actor.role !== 'store_manager') throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can open a device ticket.');
    assertBranchInScope(scope, device.branchId);
    return { subjectId: device.id, branchId: device.branchId };
  }
  const redemption = await findRedemptionById(id);
  if (!redemption) throw new ApiError(404, 'NOT_FOUND', 'Redemption was not found.');
  if (actor.role !== 'store_manager') throw new ApiError(403, 'FORBIDDEN', 'Only a Store Manager can open a redemption ticket.');
  assertBranchInScope(scope, redemption.branchId);
  return { subjectId: redemption.id, branchId: redemption.branchId };
};

const notifyAdmins = async (ticket, title, body, key) => {
  const admins = await listAccounts({ role: 'super_admin', active: true });
  for (const admin of admins) {
    await notifyEvent({
      recipient: admin,
      title,
      body,
      category: 'support',
      branchId: ticket.branchId,
      deepLink: `/support/${ticket.id}`,
      idempotencyKey: `${key}:${admin.id}`,
    });
  }
};

export const createSupportTicket = async (actor, body) => {
  if (actor.role !== 'store_manager' && actor.role !== 'vendor') {
    throw new ApiError(403, 'FORBIDDEN', 'Admins cannot create manager or vendor tickets.');
  }
  const reasonCode = String(body.reasonCode || '');
  const notes = String(body.notes || '').trim();
  if (!reasons.has(reasonCode)) throw new ApiError(400, 'VALIDATION_ERROR', 'Choose a ticket reason.');
  if (!notes) throw new ApiError(400, 'VALIDATION_ERROR', 'Explain the issue in notes.');
  const resolved = await resolveSubject(actor, String(body.subjectType || ''), body.subjectId);
  const idempotencyKey = body.idempotencyKey ? String(body.idempotencyKey) : undefined;
  if (idempotencyKey) {
    const existing = await findTicketByKey(idempotencyKey);
    if (existing) return { ticket: presentTicket(existing), replayed: true };
  }
  const open = await findOpenTicket(actor.id, body.subjectType, resolved.subjectId);
  if (open) throw new ApiError(409, 'OPEN_TICKET_EXISTS', 'An open ticket already exists for this record.');
  try {
    const created = await createTicket({
      creatorAccountId: actor.id,
      creatorRole: actor.role,
      subjectType: body.subjectType,
      subjectId: resolved.subjectId,
      branchId: resolved.branchId,
      reasonCode,
      status: 'open',
      notes: [{ authorAccountId: actor.id, authorRole: actor.role, body: notes }],
      idempotencyKey,
    });
    await createAuditEvent({
      actorId: actor.id, actorRole: actor.role, action: 'support.created', entityType: 'support_ticket',
      entityId: String(created.id), storeId: created.branchId, metadata: { reasonCode, subjectType: created.subjectType },
    });
    await notifyAdmins(created, 'New support ticket', `${actor.role} reported ${reasonCode.replaceAll('_', ' ')}.`, `notify-ticket-open:${created.id}`);
    return { ticket: presentTicket(created), replayed: false };
  } catch (error) {
    if (duplicateError(error) && idempotencyKey) {
      return { ticket: presentTicket(await findTicketByKey(idempotencyKey)), replayed: true };
    }
    if (duplicateError(error)) throw new ApiError(409, 'OPEN_TICKET_EXISTS', 'An open ticket already exists for this record.');
    throw error;
  }
};

export const listSupportTickets = async (actor, query = {}) => {
  const filter = {};
  if (query.status) filter.status = query.status;
  if (actor.role === 'store_manager' || actor.role === 'vendor') {
    filter.creatorAccountId = actor.id;
  } else if (actor.role === 'admin') {
    const scope = await loadScope(actor);
    filter.branchId = { $in: scope.branchIds };
  } else if (actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'You cannot list support tickets.');
  }
  return (await listTickets(filter)).map(presentTicket);
};

export const readSupportTicket = async (actor, id) => {
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  return presentTicket(ticket);
};

export const addTicketNote = async (actor, id, body) => {
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  const text = String(body.body || '').trim();
  if (!text) throw new ApiError(400, 'VALIDATION_ERROR', 'A note is required.');
  if (ticket.status === 'resolved' && actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(409, 'TICKET_RESOLVED', 'This ticket is already resolved.');
  }
  ticket.notes.push({ authorAccountId: actor.id, authorRole: actor.role, body: text });
  await saveTicket(ticket);
  return presentTicket(ticket);
};

export const assignTicket = async (actor, id, body) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only an Admin can assign a ticket.');
  }
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  const owner = await findAccountById(requireObjectId(body.ownerAccountId, 'owner id'));
  if (!owner || (owner.role !== 'super_admin' && owner.role !== 'admin')) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Assign the ticket to an Admin.');
  }
  ticket.ownerAccountId = owner.id;
  if (ticket.status === 'open') ticket.status = 'investigating';
  await saveTicket(ticket);
  await createAuditEvent({
    actorId: actor.id, actorRole: actor.role, action: 'support.assigned', entityType: 'support_ticket',
    entityId: String(ticket.id), storeId: ticket.branchId, metadata: { ownerAccountId: String(owner.id) },
  });
  const creator = await findAccountById(ticket.creatorAccountId);
  await notifyEvent({
    recipient: creator,
    title: 'Ticket assigned',
    body: 'An Admin is investigating your support ticket.',
    category: 'support',
    branchId: ticket.branchId,
    deepLink: `/tickets/${ticket.id}`,
    idempotencyKey: `notify-ticket-assigned:${ticket.id}:${owner.id}`,
  });
  return presentTicket(ticket);
};

export const updateTicketStatus = async (actor, id, body) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only an Admin can change ticket status.');
  }
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  const status = String(body.status || '');
  if (status !== 'investigating' && status !== 'resolved') {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Choose investigating or resolved.');
  }
  ticket.status = status;
  const note = String(body.note || '').trim();
  if (note) ticket.notes.push({ authorAccountId: actor.id, authorRole: actor.role, body: note });
  await saveTicket(ticket);
  await createAuditEvent({
    actorId: actor.id, actorRole: actor.role, action: `support.${status}`, entityType: 'support_ticket',
    entityId: String(ticket.id), storeId: ticket.branchId, metadata: { status },
  });
  if (status === 'resolved') {
    const creator = await findAccountById(ticket.creatorAccountId);
    await notifyEvent({
      recipient: creator,
      title: 'Ticket resolved',
      body: 'Your support ticket was resolved. Financial history is unchanged.',
      category: 'support',
      branchId: ticket.branchId,
      deepLink: `/tickets/${ticket.id}`,
      idempotencyKey: `notify-ticket-resolved:${ticket.id}`,
    });
  }
  return presentTicket(ticket);
};

export const signTicketAttachment = async (actor, id, body) => {
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  if (String(ticket.creatorAccountId) !== String(actor.id)) {
    throw new ApiError(403, 'FORBIDDEN', 'Only the ticket creator can upload attachments.');
  }
  const contentType = String(body.contentType || '');
  if (!imageTypes.has(contentType)) throw new ApiError(400, 'VALIDATION_ERROR', 'Attachments must be JPEG, PNG or PDF.');
  const sizeBytes = Number(body.sizeBytes);
  if (!Number.isInteger(sizeBytes) || sizeBytes < 1 || sizeBytes > 10_000_000) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Attachment size is invalid.');
  }
  const checksumSha256 = String(body.checksumSha256 || '').toLowerCase();
  if (!/^[a-f0-9]{64}$/.test(checksumSha256)) throw new ApiError(400, 'VALIDATION_ERROR', 'A SHA-256 checksum is required.');
  const objectKey = `tickets/${ticket.id}/${randomUUID()}`;
  const grantExpiresAt = new Date(Date.now() + env.r2.signTtlSeconds * 1000);
  ticket.attachments.push({ objectKey, contentType, sizeBytes, checksumSha256, status: 'pending', grantExpiresAt });
  await saveTicket(ticket);
  const attachment = ticket.attachments[ticket.attachments.length - 1];
  return {
    attachmentId: String(attachment.id),
    objectKey,
    upload: await signObjectAccess(objectKey, contentType, 'PUT', grantExpiresAt),
  };
};

export const completeTicketAttachment = async (actor, id, body) => {
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  if (String(ticket.creatorAccountId) !== String(actor.id)) {
    throw new ApiError(403, 'FORBIDDEN', 'Only the ticket creator can complete an upload.');
  }
  const objectKey = String(body.objectKey || '');
  const attachment = ticket.attachments.find((row) => row.objectKey === objectKey);
  if (!attachment) throw new ApiError(404, 'NOT_FOUND', 'Upload grant was not found.');
  if (attachment.grantExpiresAt && attachment.grantExpiresAt.getTime() < Date.now()) {
    throw new ApiError(400, 'SIGNATURE_EXPIRED', 'The upload signature has expired.');
  }
  const checksumSha256 = String(body.checksumSha256 || '').toLowerCase();
  if (checksumSha256 !== attachment.checksumSha256) throw new ApiError(400, 'VALIDATION_ERROR', 'The checksum does not match the signed upload.');
  await assertObjectUploaded(objectKey);
  attachment.status = 'uploaded';
  await saveTicket(ticket);
  return presentTicket(ticket);
};

export const downloadTicketAttachment = async (actor, id, attachmentId) => {
  const ticket = await requireTicket(id);
  await assertCanRead(actor, ticket);
  const attachment = ticket.attachments.id(attachmentId);
  if (!attachment || attachment.status !== 'uploaded') throw new ApiError(404, 'NOT_FOUND', 'Attachment was not found.');
  const expiresAt = new Date(Date.now() + env.r2.signTtlSeconds * 1000);
  return { objectKey: attachment.objectKey, download: await signObjectAccess(attachment.objectKey, attachment.contentType, 'GET', expiresAt) };
};
