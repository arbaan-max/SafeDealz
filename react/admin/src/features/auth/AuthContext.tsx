import { createContext, type PropsWithChildren, useCallback, useContext, useEffect, useMemo, useRef, useState } from 'react';
import { apiClient, ApiError } from '../../shared/api/apiClient';
import { requestWithSingleRefresh } from './api/sessionRequest';
import { loginAdmin, logoutAdmin, refreshAdmin, type Account } from './api/authApi';

type AuthState = { status: 'checking' | 'anonymous' | 'authenticated'; account: Account | null; accessToken: string | null; message: string | null };
type RefreshOptions = { optional?: boolean };
type AuthValue = AuthState & {
  login(email: string, password: string): Promise<void>;
  logout(): Promise<void>;
  refresh(options?: RefreshOptions): Promise<string | null>;
  request<T>(path: string, init?: RequestInit): Promise<T>;
};
const AuthContext = createContext<AuthValue | null>(null);
const cookie = (name: string) => document.cookie.split('; ').find((item) => item.startsWith(`${name}=`))?.split('=').slice(1).join('=') ?? null;

export function AuthProvider({ children }: PropsWithChildren) {
  const [state, setState] = useState<AuthState>({ status: 'checking', account: null, accessToken: null, message: null });
  const stateRef = useRef(state);
  const csrfRef = useRef<string | null>(null);
  const inflightRef = useRef<Promise<string | null> | null>(null);
  stateRef.current = state;

  const applySession = useCallback((account: Account, accessToken: string, csrfToken?: string) => {
    if (csrfToken) csrfRef.current = csrfToken;
    const next: AuthState = { status: 'authenticated', account, accessToken, message: null };
    stateRef.current = next;
    setState(next);
  }, []);

  const terminal = useCallback((message: string | null = null) => {
    csrfRef.current = null;
    const next: AuthState = { status: 'anonymous', account: null, accessToken: null, message };
    stateRef.current = next;
    setState(next);
  }, []);

  const refresh = useCallback(async (options?: RefreshOptions) => {
    if (inflightRef.current) return inflightRef.current;
    const run = (async () => {
      const csrf = cookie('sd_csrf') || csrfRef.current;
      if (!csrf) {
        if (!options?.optional && !stateRef.current.accessToken) terminal();
        return stateRef.current.accessToken;
      }
      try {
        const session = await refreshAdmin(csrf);
        applySession(session.account, session.accessToken, session.csrfToken);
        return session.accessToken;
      } catch (error) {
        if (error instanceof ApiError && error.code === 'ACCOUNT_INACTIVE') {
          terminal(error.message);
          return null;
        }
        if (!options?.optional && !stateRef.current.accessToken) terminal();
        return stateRef.current.accessToken;
      }
    })();
    inflightRef.current = run;
    try {
      return await run;
    } finally {
      if (inflightRef.current === run) inflightRef.current = null;
    }
  }, [applySession, terminal]);

  useEffect(() => { void refresh(); }, [refresh]);

  const login = useCallback(async (email: string, password: string) => {
    const session = await loginAdmin(email, password);
    applySession(session.account, session.accessToken, session.csrfToken);
  }, [applySession]);

  const logout = useCallback(async () => {
    if (stateRef.current.accessToken) await logoutAdmin(stateRef.current.accessToken).catch(() => undefined);
    terminal();
  }, [terminal]);

  const request = useCallback(async <T,>(path: string, init: RequestInit = {}) => {
    if (!state.accessToken) throw new ApiError(401, 'AUTH_REQUIRED', 'Authentication is required.');
    return requestWithSingleRefresh(
      (token) => apiClient.request<T>(path, { ...init, headers: { Authorization: `Bearer ${token}`, ...init.headers } }),
      state.accessToken,
      refresh,
      terminal,
    );
  }, [refresh, state.accessToken, terminal]);

  const value = useMemo(() => ({ ...state, login, logout, refresh, request }), [state, login, logout, refresh, request]);
  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

// eslint-disable-next-line react-refresh/only-export-components
export function useAuth() {
  const value = useContext(AuthContext);
  if (!value) throw new Error('useAuth must be used within AuthProvider');
  return value;
}
