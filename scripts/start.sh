#!/bin/bash
echo "Starting start.sh script..."

# Navigate to app directory
cd /home/ubuntu/mini-todo || exit

# Stop any previous instance of the app (if running)
APP_PID=$(pgrep -f "node index.js")
if [ ! -z "$APP_PID" ]; then
  echo "Stopping existing app process $APP_PID..."
  kill -9 $APP_PID
fi

# Start the app in background
echo "Starting app..."
nohup node index.js > app.log 2>&1 &

echo "App started successfully!"
