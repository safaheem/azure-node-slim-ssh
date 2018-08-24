#!/bin/sh
set -e

echo "Starting Script ..."
echo "nameserver 8.8.8.8" > /etc/resolv.conf && echo "nameserver 8.8.8.9" >> /etc/resolv.conf
node /code/server.js
