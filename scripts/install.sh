#!/bin/bash
set -e

cd /home/ubuntu/mini-todo

echo "Installing dependencies..."

# Install Node modules
npm install

# Install PM2 globally if not exists
if ! command -v pm2 &> /dev/null
then
  echo "PM2 not found. Installing..."
  sudo npm install -g pm2
fi
