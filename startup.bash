#!/bin/bash

echo "Waiting for VNC/noVNC servers to start..."
gp ports await 5901 > /dev/null
gp ports await 6901 > /dev/null
echo "Started."

echo "The SSH URL is:"
gp ssh | cut -f2 -d' '
