#!/bin/bash

# tasks:
#     - name: Launch VNC Image
#       init: docker pull braughtg/vnc-novnc-base:1.2.1
#       before: gp env TASK_STARTED=1
#       command: |
#           docker create --name vnc --publish 5901:5901 --publish 6901:6901 braughtg/vnc-novnc-base:1.2.1
#           docker start vnc


echo -n "Waiting for VNC/noVNC servers to start..."

# Wait here for the task init has pulled the image...
IMAGE_PULLED=""
while [ -z "$IMAGE_PULLED" ]
do
    IMAGE_PULLED=$(docker image ls | tail -n +2)
    echo -n "."
    sleep 1
done
echo ""

CONTAINER_EXISTS=$(docker ps -a | grep "vnc")
if [ -z $CONTAINER_EXISTS ];
then
    docker create --name vnc --publish 5901:5901 --publish 6901:6901 braughtg/vnc-novnc-base:1.2.1
fi

docker start vnc

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
