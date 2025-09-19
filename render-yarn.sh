#!/usr/bin/env bash
# Exit on error
set -o errexit

# Install yarn if not present
npm install -g yarn

# Clean any existing installations
rm -rf node_modules yarn.lock package-lock.json

# Install dependencies with yarn
yarn install

# Build the Next.js application
yarn build