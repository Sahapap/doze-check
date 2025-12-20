/* eslint-disable @typescript-eslint/no-explicit-any */
// api/axiosInstance.ts
import axios from "axios";

function toCamelCase(str: string): string {
  return str.replace(/_([a-z])/g, (_, char) => char.toUpperCase());
}

function keysToCamelCase(obj: any): any {
  if (Array.isArray(obj)) {
    return obj.map(keysToCamelCase);
  } else if (obj !== null && obj.constructor === Object) {
    return Object.keys(obj).reduce((acc, key) => {
      const camelKey = toCamelCase(key);
      acc[camelKey] = keysToCamelCase(obj[key]);
      return acc;
    }, {} as any);
  }
  return obj;
}

const axiosInstance = axios.create({
  baseURL: "https://dozecheck.scfc.cmu.ac.th/api", // Replace or use env
  timeout: 10000,
  headers: {
    "Content-Type": "application/json",
  },
});

// Optional: Add response interceptor
axiosInstance.interceptors.response.use(
  (response) => {
    response.data = keysToCamelCase(response.data);
    return response;
  },
  (error) => {
    // Example: Handle token expiration or logging
    console.error("API Error:", error);
    return Promise.reject(error);
  }
);

export default axiosInstance;
