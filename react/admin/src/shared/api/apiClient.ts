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

export const apiClient = new ApiClient(import.meta.env.VITE_API_BASE_URL ?? '/api/v1');
