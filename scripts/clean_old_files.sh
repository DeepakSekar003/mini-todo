#!/bin/bash
set -e

APP_DIR="/var/www/html"

if [ -d "$APP_DIR" ]; then
  echo "Cleaning old files..."
  sudo rm -rf ${APP_DIR:?}/*
else
  echo "Directory does not exist, skipping cleanup"
fi
