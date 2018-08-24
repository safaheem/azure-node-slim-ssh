#!/bin/bash
set -e
echo "Starting script ..."
cp /resolv.conf /etc/resolv.conf
node server.js