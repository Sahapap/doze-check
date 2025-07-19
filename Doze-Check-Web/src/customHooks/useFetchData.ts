// hooks/useFetchData.ts
import { useEffect, useState, useCallback } from 'react';
import axiosInstance from '../api/axiosInstance';
import type { AxiosRequestConfig } from 'axios';

type FetchState<T> = {
  data: T | null;
  loading: boolean;
  error: string | null;
  refetch: () => void;
};

export function useFetchData<T>(
  url: string,
  config?: AxiosRequestConfig,
  autoFetch: boolean = true
): FetchState<T> {
  const [data, setData] = useState<T | null>(null);
  const [loading, setLoading] = useState<boolean>(autoFetch);
  const [error, setError] = useState<string | null>(null);
  const [reloadFlag, setReloadFlag] = useState<number>(0);

  const fetchData = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const response = await axiosInstance<T>(url, config);
      setData(response.data);
    } catch (err: unknown) {
         if (err instanceof Error) {
            setError(err.message);
        } else {
            setError('An unknown error occurred');
        }
    } finally {
      setLoading(false);
    }
  }, [url, config]);

  useEffect(() => {
    if (autoFetch) {
      fetchData();
    }
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [url, reloadFlag, autoFetch]);

  const refetch = () => setReloadFlag((prev) => prev + 1);

  return { data, loading, error, refetch };
}
