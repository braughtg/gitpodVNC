# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full

RUN echo "source ./startup.bash" >> /home/gitpod/.bashrc