import { broadcastNotification, listAdminNotifications, listMyNotifications, markNotificationRead } from '../services/notification.service.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getNotifications = wrap(async (request, response) => send(response, await listMyNotifications(request.auth.account)));
export const postNotificationRead = wrap(async (request, response) => send(response, await markNotificationRead(request.auth.account, request.params.id)));
export const getNotificationHistory = wrap(async (request, response) => send(response, await listAdminNotifications(request.auth.account, request.query)));
export const postBroadcast = wrap(async (request, response) => send(response, await broadcastNotification(request.auth.account, request.body), 201));
