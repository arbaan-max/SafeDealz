import { env } from '../config/env.js';
import { login, logout, refresh, listMySessions, revokeMySession, changePassword } from '../services/auth.service.js';
import { ApiError } from '../utils/api-error.js';
import { validateLogin, validateRefresh } from '../validators/auth.validator.js';

const cookieOptions = { httpOnly: true, secure: env.secureCookies, sameSite: 'strict', path: '/api/v1/auth', maxAge: env.refreshTokenDays * 86400000 };
const csrfCookieOptions = { secure: env.secureCookies, sameSite: 'strict', path: '/', maxAge: env.refreshTokenDays * 86400000 };
const publicSession = (session, clientType, csrfToken) => ({
  accessToken: session.accessToken, expiresIn: session.expiresIn, account: session.account,
  ...(clientType === 'mobile' ? { refreshToken: session.refreshToken } : { csrfToken }),
});
const setWebCookies = (response, session) => {
  const csrfToken = crypto.randomUUID();
  response.cookie('sd_refresh', session.refreshToken, cookieOptions);
  response.cookie('sd_csrf', csrfToken, csrfCookieOptions);
  return csrfToken;
};

export const loginAccount = async (request, response, next) => {
  try {
    const input = validateLogin(request.body);
    const session = await login({ ...input, ip: request.ip ?? 'unknown' });
    const csrfToken = input.clientType === 'web' ? setWebCookies(response, session) : undefined;
    response.set('Cache-Control', 'no-store').status(200).json({ success: true, data: publicSession(session, input.clientType, csrfToken) });
  } catch (error) { next(error); }
};
export const refreshAccount = async (request, response, next) => {
  try {
    const input = validateRefresh(request.body, request.cookies);
    if (input.clientType === 'web' && (!request.get('x-csrf-token') || request.get('x-csrf-token') !== request.cookies?.sd_csrf)) {
      throw new ApiError(403, 'CSRF_INVALID', 'Request verification failed.');
    }
    const session = await refresh(input.refreshToken, input.clientType);
    const csrfToken = input.clientType === 'web' ? setWebCookies(response, session) : undefined;
    response.set('Cache-Control', 'no-store').status(200).json({ success: true, data: publicSession(session, input.clientType, csrfToken) });
  } catch (error) { next(error); }
};
export const logoutAccount = async (request, response, next) => {
  try {
    await logout(request.auth?.familyId);
    response.clearCookie('sd_refresh', cookieOptions).clearCookie('sd_csrf', csrfCookieOptions).status(204).end();
  } catch (error) { next(error); }
};
export const readCurrentAccount = (request, response) => response.set('Cache-Control', 'no-store').json({ success: true, data: request.auth.account });
export const getSessions = async (request, response, next) => {
  try { response.set('Cache-Control', 'no-store').json({ success: true, data: await listMySessions(request.auth.account, request.auth.familyId) }); }
  catch (error) { next(error); }
};
export const postSessionRevoke = async (request, response, next) => {
  try { response.json({ success: true, data: await revokeMySession(request.auth.account, request.params.id, request.auth.familyId) }); }
  catch (error) { next(error); }
};
export const postPassword = async (request, response, next) => {
  try { response.json({ success: true, data: await changePassword(request.auth.account, request.body) }); }
  catch (error) { next(error); }
};
