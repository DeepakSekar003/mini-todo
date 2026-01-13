#!/bin/bash
set -e

APP_DIR="/home/ubuntu/mini-todo"

echo "Cleaning old app files..."

if [ -d "$APP_DIR" ]; then
  rm -rf ${APP_DIR:?}/*
else
  mkdir -p "$APP_DIR"
fi

echo "Cleanup completed"
