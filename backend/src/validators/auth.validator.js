import { ApiError } from '../utils/api-error.js';

const loginAudiences = new Set(['admin_portal', 'store_manager', 'vendor']);
const clients = new Set(['web', 'mobile']);
const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

export const validateLogin = (body) => {
  const email = typeof body?.email === 'string' ? body.email : '';
  const password = typeof body?.password === 'string' ? body.password : '';
  const expectedRole = body?.expectedRole;
  const clientType = body?.clientType;
  if (!emailPattern.test(email) || !password || !loginAudiences.has(expectedRole) || !clients.has(clientType)) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'Enter a valid email, password, role and client type.');
  }
  if ((expectedRole === 'admin_portal') !== (clientType === 'web')) {
    throw new ApiError(400, 'VALIDATION_ERROR', 'The login client does not match this application.');
  }
  return { email, password, expectedRole, clientType };
};

export const validateRefresh = (body, cookies) => {
  const clientType = body?.clientType;
  if (!clients.has(clientType)) throw new ApiError(400, 'VALIDATION_ERROR', 'Client type is required.');
  const refreshToken = clientType === 'web' ? cookies?.sd_refresh : body?.refreshToken;
  if (typeof refreshToken !== 'string' || !refreshToken) throw new ApiError(401, 'SESSION_INVALID', 'Session is invalid or expired.');
  return { clientType, refreshToken };
};
