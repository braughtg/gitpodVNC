# You can find the new timestamped tags here: https://hub.docker.com/r/gitpod/workspace-full/tags
FROM gitpod/workspace-full

COPY ./startup.bash /home/gitpod/.bashrc.d/10-gitkit