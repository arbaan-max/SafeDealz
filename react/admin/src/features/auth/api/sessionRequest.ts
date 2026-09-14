import { ApiError } from '../../../shared/api/apiClient';

export async function requestWithSingleRefresh<T>(
  request: (accessToken: string) => Promise<T>,
  accessToken: string,
  refresh: () => Promise<string | null>,
  terminal: (message: string | null) => void,
): Promise<T> {
  try { return await request(accessToken); }
  catch (error) {
    if (error instanceof ApiError && error.code === 'ACCOUNT_INACTIVE') { terminal(error.message); throw error; }
    if (!(error instanceof ApiError) || !['TOKEN_INVALID', 'SESSION_INVALID'].includes(error.code)) throw error;
    const renewed = await refresh();
    if (!renewed) { terminal(null); throw error; }
    try { return await request(renewed); }
    catch (retryError) { if (retryError instanceof ApiError && retryError.code === 'ACCOUNT_INACTIVE') terminal(retryError.message); throw retryError; }
  }
}
