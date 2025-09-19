# Use Node.js 20 image (not alpine for better compatibility)
FROM node:20-slim

# Set working directory
WORKDIR /app

# Copy package.json only
COPY package.json ./

# Install dependencies with legacy peer deps and skip optional deps
RUN npm install --legacy-peer-deps --omit=optional

# Copy application files
COPY . .

# Build the Next.js app
RUN npm run build

# Clean dev dependencies to reduce image size
RUN npm prune --production

# The PORT env var will be provided by Render
EXPOSE 10000

# Start the production server
CMD ["node_modules/.bin/next", "start", "-p", "10000"]