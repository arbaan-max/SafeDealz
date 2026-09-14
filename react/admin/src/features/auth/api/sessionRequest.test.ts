import { ApiError } from '../../../shared/api/apiClient';
import { requestWithSingleRefresh } from './sessionRequest';

test('refreshes once and retries the original request once', async () => {
  const request = vi.fn().mockRejectedValueOnce(new ApiError(401, 'TOKEN_INVALID', 'Expired')).mockResolvedValueOnce('ok');
  const refresh = vi.fn().mockResolvedValue('new-token'); const terminal = vi.fn();
  await expect(requestWithSingleRefresh(request, 'old-token', refresh, terminal)).resolves.toBe('ok');
  expect(request).toHaveBeenCalledTimes(2); expect(refresh).toHaveBeenCalledTimes(1); expect(terminal).not.toHaveBeenCalled();
});

test('terminates inactive sessions without refreshing', async () => {
  const error=new ApiError(401,'ACCOUNT_INACTIVE','Your account is inactive. Contact your administrator.');
  const request=vi.fn().mockRejectedValue(error);const refresh=vi.fn();const terminal=vi.fn();
  await expect(requestWithSingleRefresh(request,'token',refresh,terminal)).rejects.toBe(error);
  expect(refresh).not.toHaveBeenCalled();expect(terminal).toHaveBeenCalledOnce();
});
