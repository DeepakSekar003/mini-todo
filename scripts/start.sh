#!/bin/bash
set -e

cd /home/ubuntu/mini-todo

echo "Restarting Express app using PM2..."

pm2 describe mini-todo > /dev/null
if [ $? -eq 0 ]; then
  pm2 restart mini-todo
else
  pm2 start app.js --name mini-todo
fi

pm2 save
