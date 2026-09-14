import { apiClient } from '../../../shared/api/apiClient';
import type { AccountRole } from '../../../shared/auth/access';

export type Account = { id: string; email: string; role: AccountRole };
export type WebSession = { accessToken: string; csrfToken: string; expiresIn: number; account: Account };

export const loginAdmin = (email: string, password: string) => apiClient.request<WebSession>('/auth/login', {
  method: 'POST', body: JSON.stringify({ email, password, expectedRole: 'admin_portal', clientType: 'web' }),
});
export const refreshAdmin = (csrfToken: string) => apiClient.request<WebSession>('/auth/refresh', {
  method: 'POST', headers: { 'x-csrf-token': csrfToken }, body: JSON.stringify({ clientType: 'web' }),
});
export const readAccount = (accessToken: string) => apiClient.request<Account>('/auth/me', {
  headers: { Authorization: `Bearer ${accessToken}` },
});
export const logoutAdmin = (accessToken: string) => apiClient.request<void>('/auth/logout', {
  method: 'POST', headers: { Authorization: `Bearer ${accessToken}` },
});
