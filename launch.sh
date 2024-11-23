#!/bin/sh

set -x
set -e

xhost local:root
podman run --rm -e DISPLAY --net=host -v /tmp/.X11-unix:/tmp/.X11-unix --uidmap $(id -u):0:1 --uidmap 0:1:$(id -u) -it torbrowser
xhost -
