#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install dependencies with legacy peer deps flag
npm install --legacy-peer-deps

# Build the Next.js application
npm run build