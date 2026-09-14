import { createContext, type PropsWithChildren, useCallback, useContext, useEffect, useMemo, useState } from 'react';
import { ApiError } from '../../shared/api/apiClient';
import { loginAdmin, logoutAdmin, refreshAdmin, type Account } from './api/authApi';

type AuthState = { status: 'checking' | 'anonymous' | 'authenticated'; account: Account | null; accessToken: string | null; message: string | null };
type AuthValue = AuthState & { login(email: string, password: string): Promise<void>; logout(): Promise<void>; refresh(): Promise<string | null> };
const AuthContext = createContext<AuthValue | null>(null);
const cookie = (name: string) => document.cookie.split('; ').find((item) => item.startsWith(`${name}=`))?.split('=').slice(1).join('=') ?? null;

export function AuthProvider({ children }: PropsWithChildren) {
  const [state, setState] = useState<AuthState>({ status: 'checking', account: null, accessToken: null, message: null });
  const terminal = useCallback((message: string | null = null) => setState({ status: 'anonymous', account: null, accessToken: null, message }), []);
  const refresh = useCallback(async () => {
    const csrf = cookie('sd_csrf');
    if (!csrf) { terminal(); return null; }
    try {
      const session = await refreshAdmin(csrf);
      setState({ status: 'authenticated', account: session.account, accessToken: session.accessToken, message: null });
      return session.accessToken;
    } catch (error) {
      terminal(error instanceof ApiError && error.code === 'ACCOUNT_INACTIVE' ? error.message : null);
      return null;
    }
  }, [terminal]);
  useEffect(() => { void refresh(); }, [refresh]);
  const login = useCallback(async (email: string, password: string) => {
    const session = await loginAdmin(email, password);
    setState({ status: 'authenticated', account: session.account, accessToken: session.accessToken, message: null });
  }, []);
  const logout = useCallback(async () => {
    if (state.accessToken) await logoutAdmin(state.accessToken).catch(() => undefined);
    terminal();
  }, [state.accessToken, terminal]);
  const value = useMemo(() => ({ ...state, login, logout, refresh }), [state, login, logout, refresh]);
  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

// eslint-disable-next-line react-refresh/only-export-components
export function useAuth() {
  const value = useContext(AuthContext);
  if (!value) throw new Error('useAuth must be used within AuthProvider');
  return value;
}
