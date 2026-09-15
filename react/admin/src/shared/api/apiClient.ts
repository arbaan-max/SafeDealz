export type ApiErrorBody = { code: string; message: string; details?: unknown };
export type ApiEnvelope<T> = { success: true; data: T };

export class ApiError extends Error {
  constructor(public readonly status: number, public readonly code: string, message: string, public readonly details?: unknown) {
    super(message);
    this.name = 'ApiError';
  }
}

export class ApiClient {
  private readonly transport: typeof fetch;
  constructor(private readonly baseUrl: string, transport?: typeof fetch) {
    this.transport = transport ?? ((input, init) => fetch(input, init));
  }

  async request<T>(path: string, init: RequestInit = {}): Promise<T> {
    const response = await this.transport(`${this.baseUrl}${path}`, {
      ...init,
      credentials: 'include',
      headers: { Accept: 'application/json', 'Content-Type': 'application/json', ...init.headers },
    });
    if (response.status === 204) return undefined as T;
    const body = await response.json() as ApiEnvelope<T> | { success: false; error: ApiErrorBody };
    if (!response.ok || !body.success) {
      const error = 'error' in body ? body.error : { code: 'HTTP_ERROR', message: response.statusText };
      throw new ApiError(response.status, error.code, error.message, error.details);
    }
    return body.data;
  }
}

const trimSlash = (url: string) => (url.endsWith('/') ? url.slice(0, -1) : url);

export const resolveApiBaseUrl = (
  target = import.meta.env.VITE_API_TARGET,
  localBase = import.meta.env.VITE_LOCAL_API_BASE_URL ?? import.meta.env.VITE_API_BASE_URL,
  liveBase = import.meta.env.VITE_LIVE_API_BASE_URL,
) => {
  const useLive = (target ?? 'local').trim().toLowerCase() === 'live';
  return trimSlash(
    useLive
      ? liveBase || 'https://safedealz-production.up.railway.app/api/v1'
      : localBase || '/api/v1',
  );
};

export const apiClient = new ApiClient(resolveApiBaseUrl());
