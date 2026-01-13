#!/bin/bash
cd /home/ubuntu/mini-todo
pm2 delete mini-todo || true
pm2 start index.js --name mini-todo
