import {
  addTicketNote, assignTicket, completeTicketAttachment, createSupportTicket, downloadTicketAttachment,
  listSupportTickets, readSupportTicket, signTicketAttachment, updateTicketStatus,
} from '../services/support.service.js';
import { listSupportAdminStatuses } from '../services/support-status.js';

const send = (response, data, status = 200) => response.status(status).json({ success: true, data });
const wrap = (handler) => async (request, response, next) => {
  try { await handler(request, response); } catch (error) { next(error); }
};

export const getTickets = wrap(async (request, response) => send(response, await listSupportTickets(request.auth.account, request.query)));
export const getTicketStatuses = wrap(async (_request, response) => send(response, { statuses: listSupportAdminStatuses() }));
export const postTicket = wrap(async (request, response) => {
  const result = await createSupportTicket(request.auth.account, request.body);
  send(response, result.ticket, result.replayed ? 200 : 201);
});
export const getTicket = wrap(async (request, response) => send(response, await readSupportTicket(request.auth.account, request.params.id)));
export const postTicketNote = wrap(async (request, response) => send(response, await addTicketNote(request.auth.account, request.params.id, request.body)));
export const postTicketAssign = wrap(async (request, response) => send(response, await assignTicket(request.auth.account, request.params.id, request.body)));
export const postTicketStatus = wrap(async (request, response) => send(response, await updateTicketStatus(request.auth.account, request.params.id, request.body)));
export const postTicketAttachmentSign = wrap(async (request, response) => send(response, await signTicketAttachment(request.auth.account, request.params.id, request.body)));
export const postTicketAttachmentComplete = wrap(async (request, response) => send(response, await completeTicketAttachment(request.auth.account, request.params.id, request.body)));
export const postTicketAttachmentDownload = wrap(async (request, response) => (
  send(response, await downloadTicketAttachment(request.auth.account, request.params.id, request.params.attachmentId))
));
