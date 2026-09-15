import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { type PropsWithChildren, useState } from 'react';
import { AuthProvider } from '../../features/auth/AuthContext';
import { ConfirmDeleteProvider } from '../../features/organization/components/ConfirmDelete';

export function AppProviders({ children }: PropsWithChildren) {
  const [queryClient] = useState(
    () => new QueryClient({ defaultOptions: { queries: { retry: 1, staleTime: 30_000 } } }),
  );

  return (
    <QueryClientProvider client={queryClient}>
      <ConfirmDeleteProvider>
        <AuthProvider>{children}</AuthProvider>
      </ConfirmDeleteProvider>
    </QueryClientProvider>
  );
}
