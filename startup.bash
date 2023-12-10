#!/bin/bash

echo "Waiting for VNC/noVNC servers to start..."
gp port await 5901
gp port await 6901
echo "Started."

echo "The SSH URL is:"
gp ssh | cut -f2 -d' '
