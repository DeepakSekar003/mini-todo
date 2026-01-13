#!/bin/bash

cd /home/ubuntu/mini-todo

echo "Starting app using PM2..."

# Stop app if running (do not fail if not running)
pm2 stop mini-todo || true
pm2 delete mini-todo || true

# START CORRECT FILE
pm2 start index.js --name mini-todo

# Save PM2 process
pm2 save
