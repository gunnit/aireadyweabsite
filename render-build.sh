#!/usr/bin/env bash
# Exit on error
set -o errexit

# Clean cache and modules first
rm -rf node_modules package-lock.json

# Install dependencies with force flag
npm install --force

# Build the Next.js application
npm run build