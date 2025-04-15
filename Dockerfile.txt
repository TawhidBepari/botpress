# Use Node.js as base image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy all files from your project to /app in the container
COPY . .

# Install dependencies using pnpm
RUN npm install -g pnpm && pnpm install --frozen-lockfile

# Expose port 3000 (or whatever your bot runs on)
EXPOSE 3000

# Run the start command
CMD ["pnpm", "start"]
