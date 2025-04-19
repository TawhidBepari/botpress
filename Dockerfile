# Use Node.js as base image (with Alpine for smaller size)
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and pnpm-lock.yaml separately to leverage Docker cache for faster builds
COPY package.json pnpm-lock.yaml ./

# Install pnpm globally (use corepack for Node 16+)
RUN corepack enable && pnpm install --frozen-lockfile

# Copy all other project files
COPY . .

# Expose port 3000 (or whatever your bot runs on)
EXPOSE 3000

# Run the start command
CMD ["pnpm", "start"]
