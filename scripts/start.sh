#!/bin/bash
cd /home/ubuntu/mini-todo || exit 1

# Kill old server
sudo fuser -k 3000/tcp || true
pm2 delete mini-todo || true

# Start server from correct folder
pm2 start index.js --name mini-todo --cwd /home/ubuntu/mini-todo
pm2 save
