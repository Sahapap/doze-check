// api/axiosInstance.ts
import axios from 'axios';

const axiosInstance = axios.create({
  baseURL: import.meta.env.VITE_API_BASE_URL || 'http://localhost:3000/api', // Replace or use env
  timeout: 10000,
  headers: {
    'Content-Type': 'application/json',
  },
});

// Optional: Add response interceptor
axiosInstance.interceptors.response.use(
  (response) => response,
  (error) => {
    // Example: Handle token expiration or logging
    console.error('API Error:', error);
    return Promise.reject(error);
  }
);

export default axiosInstance;
