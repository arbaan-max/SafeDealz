import { keepPreviousData, useQuery, type QueryKey } from '@tanstack/react-query';
import { useAuth } from '../../auth/AuthContext';

const EMPTY_ITEMS: never[] = [];

export function queryMessage(error: unknown) {
  if (!error) return null;
  return error instanceof Error ? error.message : 'Unable to load.';
}

export function useAdminQuery<T>(queryKey: QueryKey, queryFn: () => Promise<T>, options?: { placeholderData?: boolean; enabled?: boolean }) {
  const { status } = useAuth();
  return useQuery({
    queryKey,
    queryFn,
    enabled: status === 'authenticated' && (options?.enabled ?? true),
    staleTime: 0,
    refetchOnMount: 'always',
    placeholderData: options?.placeholderData ? keepPreviousData : undefined,
  });
}

export function useAdminList<T>(queryKey: QueryKey, queryFn: () => Promise<T[]>, options?: { placeholderData?: boolean; enabled?: boolean }) {
  const query = useAdminQuery(queryKey, queryFn, options);
  return { ...query, items: query.data ?? EMPTY_ITEMS as T[] };
}

