#!/bin/sh
set -e

echo "Starting Script ..."
echo -e "\nnameserver 8.8.8.8" >> /etc/resolv.conf
node /code/server.js
