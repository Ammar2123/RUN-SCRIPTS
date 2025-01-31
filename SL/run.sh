#!/bin/bash

xhost +

docker run --rm -it --net=host --cap-add=NET_ADMIN --cap-add=NET_RAW \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    fakee123/test-sllab bash -c "iptables -A INPUT -p tcp --dport 80 -j ACCEPT && bash"