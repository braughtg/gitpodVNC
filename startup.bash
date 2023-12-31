#!/bin/bash

# tasks:
#     - name: Launch VNC Image
#       init: docker pull braughtg/vnc-novnc-base:1.2.1
#       before: gp env TASK_STARTED=1
#       command: |
#           docker create --name vnc --publish 5901:5901 --publish 6901:6901 braughtg/vnc-novnc-base:1.2.1
#           docker start vnc

if [ -z "$CONTAINER_STARTED"]; 
then
    echo "Waiting for VNC/noVNC servers to start..."
    docker create --name vnc --publish 5901:5901 --publish 6901:6901 braughtg/vnc-novnc-base:1.2.1
    docker start vnc
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

  gp env CONTAINER_STARTED=1
fi


# gp ports await 5901 > /dev/null
# gp ports await 6901 > /dev/null
