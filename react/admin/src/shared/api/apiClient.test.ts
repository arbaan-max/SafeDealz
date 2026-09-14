import { ApiClient, ApiError } from './apiClient';

test('returns data from the standard success envelope and includes cookies', async () => {
  const transport = vi.fn(async (_input: RequestInfo | URL, init?: RequestInit) => {
    expect(init?.credentials).toBe('include');
    return new Response(JSON.stringify({ success: true, data: { status: 'ok' } }), { status: 200 });
  });
  const client = new ApiClient('/api', transport as typeof fetch);
  await expect(client.request('/health')).resolves.toEqual({ status: 'ok' });
});

test('maps the standard error envelope to ApiError', async () => {
  const transport = vi.fn(async () => new Response(JSON.stringify({ success: false, error: { code: 'FORBIDDEN', message: 'Denied' } }), { status: 403 }));
  const client = new ApiClient('/api', transport as typeof fetch);
  await expect(client.request('/private')).rejects.toEqual(new ApiError(403, 'FORBIDDEN', 'Denied'));
});
