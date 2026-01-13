#!/bin/bash
echo "Starting install.sh script..."

# Navigate to app directory
cd /home/ubuntu/mini-todo || exit

# Remove node_modules if exists (avoid conflicts)
if [ -d "node_modules" ]; then
  echo "Removing existing node_modules..."
  rm -rf node_modules
fi

# Install Node.js dependencies
echo "Installing npm dependencies..."
npm install

# Optional: build if you have a build step (like React)
# npm run build

echo "Installation completed!"

