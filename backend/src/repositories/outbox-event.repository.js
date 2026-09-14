import { OutboxEvent } from '../models/outbox-event.model.js';

export const createOutboxEvent = async (attributes, options = {}) => {
  const [event] = await OutboxEvent.create([attributes], { session: options.session });
  return event;
};
