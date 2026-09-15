import { ApiError } from '../utils/api-error.js';

export const SUPPORT_ADMIN_STATUSES = Object.freeze([
  { value: 'investigation', label: 'Investigation' },
  { value: 'resolved', label: 'Resolved' },
]);

const storedByValue = Object.freeze({
  investigation: 'investigating',
  investigating: 'investigating',
  resolved: 'resolved',
});

export const listSupportAdminStatuses = () => SUPPORT_ADMIN_STATUSES;

export const parseAdminTicketStatus = (status) => {
  const stored = storedByValue[String(status || '').trim()];
  if (!stored) throw new ApiError(400, 'VALIDATION_ERROR', 'Choose a supported ticket status.');
  return stored;
};
