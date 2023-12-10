#!/bin/bash

echo "Waiting for VNC/noVNC servers to start..."
gp ports await 5901 > /dev/null
gp ports await 6901 > /dev/null
echo "Started."
echo ""

echo "Connect to the noVNC server with your browser at:"
gp url 6901
echo ""
echo "OR"
echo ""

echo "Do the following on our machine to connect via VNC:"
SSH_URL=$(gp ssh | cut -f2 -d' ')
echo "  Run the command:"
echo "    ssh -L 5901:localhost:5901 $SSH_URL"
echo "  Connect your VNC Client to:"
echo "    localhost:5901"
echo ""
