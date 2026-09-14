import { AuditEvent } from '../models/audit-event.model.js';

export const createAuditEvent = async (attributes, options = {}) => {
  const [event] = await AuditEvent.create([attributes], { session: options.session });
  return event;
};
