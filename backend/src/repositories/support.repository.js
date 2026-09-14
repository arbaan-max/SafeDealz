import { SupportTicket } from '../models/support-ticket.model.js';

export const findTicketById = (id) => SupportTicket.findById(id);
export const findTicketByKey = (idempotencyKey) => SupportTicket.findOne({ idempotencyKey });
export const findOpenTicket = (creatorAccountId, subjectType, subjectId) => (
  SupportTicket.findOne({ creatorAccountId, subjectType, subjectId, status: { $in: ['open', 'investigating'] } })
);
export const listTickets = (filter = {}) => SupportTicket.find(filter).sort({ createdAt: -1 });
export const createTicket = (attributes) => SupportTicket.create(attributes);
export const saveTicket = (row) => row.save();
