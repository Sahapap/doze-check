FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files first for caching
COPY package*.json tsconfig*.json ./

RUN npm install

# Copy all source code
COPY . .

# Build TypeScript into dist/
RUN npm run build

FROM node:20-alpine

WORKDIR /app

# Copy only necessary runtime files
COPY package*.json ./
RUN npm install --omit=dev

# Copy built JavaScript files from builder
COPY --from=builder /app/dist ./dist

# Copy .env if needed (optional; usually mounted instead)
# COPY .env .env

EXPOSE 3000

CMD ["node", "dist/server.js"]
