import { Notification } from '../models/notification.model.js';

export const findNotificationByKey = (idempotencyKey) => Notification.findOne({ idempotencyKey });
export const findNotificationById = (id) => Notification.findById(id);
export const listNotifications = (filter = {}) => Notification.find(filter).sort({ createdAt: -1 });
export const createNotification = (attributes) => Notification.create(attributes);
export const saveNotification = (row) => row.save();
export const countUnread = (recipientAccountId) => Notification.countDocuments({ recipientAccountId, readAt: { $exists: false } });
