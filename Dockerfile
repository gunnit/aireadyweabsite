# Use Node.js 20 Alpine image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json
COPY package.json ./

# Install dependencies with force flag to handle peer dependencies
RUN npm install --force

# Copy the rest of the application
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port (Render will override this with PORT env var)
EXPOSE 10000

# Start the application (Next.js will use PORT env var automatically)
CMD ["npm", "run", "start"]