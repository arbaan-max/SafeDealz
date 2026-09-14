import { listAccounts } from '../repositories/account.repository.js';
import { findBranchById } from '../repositories/branch.repository.js';
import { findDealById } from '../repositories/deal.repository.js';
import { findDeviceById } from '../repositories/device.repository.js';
import { createNotification, findNotificationById, findNotificationByKey, listNotifications, saveNotification } from '../repositories/notification.repository.js';
import { listAssignments } from '../repositories/store-assignment.repository.js';
import { ApiError } from '../utils/api-error.js';
import { opaqueId } from '../utils/auth-crypto.js';
import { duplicateError, requireObjectId } from '../utils/ids.js';
import { now } from '../utils/clock.js';
import { assertBranchInScope, loadScope } from './scope.service.js';

const presentNotification = (row) => ({
  id: String(row.id),
  title: row.title,
  body: row.body,
  category: row.category,
  audience: row.audience,
  status: row.status,
  deepLink: row.deepLink || '',
  branchId: row.branchId ? String(row.branchId) : '',
  campaignId: row.campaignId || '',
  readAt: row.readAt || null,
  createdAt: row.createdAt,
  recipientAccountId: String(row.recipientAccountId),
  recipientRole: row.recipientRole,
});

const deliver = async (attributes) => {
  const existing = await findNotificationByKey(attributes.idempotencyKey);
  if (existing) return { notification: existing, replayed: true };
  try {
    const created = await createNotification({ ...attributes, status: 'delivered' });
    return { notification: created, replayed: false };
  } catch (error) {
    if (!duplicateError(error)) throw error;
    return { notification: await findNotificationByKey(attributes.idempotencyKey), replayed: true };
  }
};

const recipientsForAudience = async ({ audience, branchId, accountId }) => {
  if (audience === 'all_users') return listAccounts({ active: true });
  if (audience === 'all_stores') return listAccounts({ active: true, role: 'store_manager' });
  if (audience === 'all_vendors') return listAccounts({ active: true, role: 'vendor' });
  if (audience === 'vendor' || audience === 'account') {
    const account = (await listAccounts({ _id: accountId, active: true }))[0];
    return account ? [account] : [];
  }
  if (audience === 'store') {
    const assignments = await listAssignments({ branchId, active: true, kind: { $in: ['store_manager', 'admin'] } });
    const ids = [...new Set(assignments.map((row) => String(row.accountId)))];
    return listAccounts({ _id: { $in: ids }, active: true });
  }
  throw new ApiError(400, 'VALIDATION_ERROR', 'Choose a supported notification audience.');
};

export const notifyEvent = async ({ recipient, title, body, category, branchId, deepLink, idempotencyKey }) => {
  if (!recipient?.id) return null;
  return deliver({
    recipientAccountId: recipient.id,
    recipientRole: recipient.role,
    title,
    body,
    category,
    audience: 'event',
    branchId,
    deepLink: deepLink || '',
    idempotencyKey,
  });
};

export const notifyPaidDeal = async (instruction) => {
  const deal = await findDealById(instruction.dealId);
  if (!deal) return;
  const device = await findDeviceById(deal.deviceId);
  const branch = await findBranchById(deal.branchId);
  const vendor = (await listAccounts({ _id: deal.vendorAccountId }))[0];
  const manager = device?.createdByAccountId ? (await listAccounts({ _id: device.createdByAccountId }))[0] : null;
  const place = branch?.name || 'the store';
  await notifyEvent({
    recipient: vendor,
    title: 'Payout paid',
    body: `Your purchase is paid. Collect the device at ${place}.`,
    category: 'pickup',
    branchId: deal.branchId,
    deepLink: `/deals/${deal.id}`,
    idempotencyKey: `notify-paid-vendor:${deal.id}`,
  });
  await notifyEvent({
    recipient: manager,
    title: 'Store payout paid',
    body: `Payout is complete. The device is awaiting pickup.`,
    category: 'payment',
    branchId: deal.branchId,
    deepLink: `/deals/${deal.id}`,
    idempotencyKey: `notify-paid-manager:${deal.id}`,
  });
};

export const notifyPickup = async (deal) => {
  const vendor = (await listAccounts({ _id: deal.vendorAccountId }))[0];
  await notifyEvent({
    recipient: vendor,
    title: 'Device picked up',
    body: 'The originating store marked this device as picked up.',
    category: 'pickup',
    branchId: deal.branchId,
    deepLink: `/deals/${deal.id}`,
    idempotencyKey: `notify-pickup-vendor:${deal.id}`,
  });
};

export const listMyNotifications = async (actor) => {
  const rows = await listNotifications({ recipientAccountId: actor.id });
  return rows.map(presentNotification);
};

export const markNotificationRead = async (actor, id) => {
  const row = await findNotificationById(requireObjectId(id, 'notification id'));
  if (!row) throw new ApiError(404, 'NOT_FOUND', 'Notification was not found.');
  if (String(row.recipientAccountId) !== String(actor.id)) {
    throw new ApiError(403, 'FORBIDDEN', 'You can only read your own notifications.');
  }
  if (!row.readAt) {
    row.readAt = now();
    await saveNotification(row);
  }
  return presentNotification(row);
};

export const listAdminNotifications = async (actor, query = {}) => {
  if (actor.role === 'vendor' || actor.role === 'store_manager') {
    throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin or Admin can view delivery history.');
  }
  const scope = await loadScope(actor);
  const filter = {};
  if (query.category) filter.category = query.category;
  if (query.status) filter.status = query.status;
  if (query.audience) filter.audience = query.audience;
  if (query.branchId) {
    assertBranchInScope(scope, query.branchId);
    filter.branchId = query.branchId;
  } else if (!scope.all) {
    filter.branchId = { $in: scope.branchIds };
  }
  return (await listNotifications(filter)).map(presentNotification);
};

export const broadcastNotification = async (actor, body) => {
  if (actor.role !== 'super_admin' && actor.role !== 'admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin or Admin can send broadcasts.');
  }
  const audience = String(body?.audience || '').trim();
  const title = String(body?.title || '').trim();
  const message = String(body?.body || '').trim();
  const category = String(body?.category || 'broadcast').trim();
  if (!title || !message) throw new ApiError(400, 'VALIDATION_ERROR', 'Title and body are required.');
  const allowed = ['all_users', 'all_stores', 'all_vendors', 'store', 'vendor'];
  if (!allowed.includes(audience)) throw new ApiError(400, 'VALIDATION_ERROR', 'Choose a supported notification audience.');
  if (audience === 'all_users' && actor.role !== 'super_admin') {
    throw new ApiError(403, 'FORBIDDEN', 'Only Super Admin can notify every user.');
  }
  let branchId = body?.branchId;
  let accountId = body?.accountId;
  if (audience === 'store') {
    if (!branchId) throw new ApiError(400, 'VALIDATION_ERROR', 'A store is required.');
    const scope = await loadScope(actor);
    assertBranchInScope(scope, branchId);
  }
  if (audience === 'vendor' && !accountId) throw new ApiError(400, 'VALIDATION_ERROR', 'A vendor is required.');
  const campaignId = opaqueId();
  const recipients = await recipientsForAudience({ audience, branchId, accountId });
  const deliveries = [];
  for (const recipient of recipients) {
    const result = await deliver({
      recipientAccountId: recipient.id,
      recipientRole: recipient.role,
      title,
      body: message,
      category,
      audience,
      branchId,
      campaignId,
      actorId: actor.id,
      idempotencyKey: `broadcast:${campaignId}:${recipient.id}`,
    });
    deliveries.push(presentNotification(result.notification));
  }
  return { campaignId, delivered: deliveries.length, deliveries };
};
