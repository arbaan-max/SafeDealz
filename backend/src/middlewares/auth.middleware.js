import { getSessionAccount } from '../services/auth.service.js';
import { ApiError } from '../utils/api-error.js';
import { verifyAccessToken } from '../utils/auth-crypto.js';

export const requireAuthentication = async (request, response, next) => {
  try {
    const header = request.get('authorization');
    if (!header?.startsWith('Bearer ')) throw new ApiError(401, 'AUTH_REQUIRED', 'Authentication is required.');
    const payload = await verifyAccessToken(header.slice(7)).catch(() => { throw new ApiError(401, 'TOKEN_INVALID', 'Access token is invalid or expired.'); });
    request.auth = { account: await getSessionAccount(payload.sub, payload.sid), familyId: payload.sid };
    next();
  } catch (error) { next(error); }
};
