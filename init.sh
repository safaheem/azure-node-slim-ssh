#!/bin/sh
set -e
service ssh start
echo "Starting Script ..."
echo "nameserver 8.8.8.8" > /etc/resolv.conf && echo "nameserver 8.8.4.4" >> /etc/resolv.conf
node /code/server.js
