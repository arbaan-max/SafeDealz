import { AuditEvent } from '../models/audit-event.model.js';

export const createAuditEvent = async (attributes, options = {}) => {
  const [event] = await AuditEvent.create([attributes], { session: options.session });
  return event;
};
export const listAuditEvents = (filter = {}) => AuditEvent.find(filter).sort({ createdAt: -1 }).limit(200);
