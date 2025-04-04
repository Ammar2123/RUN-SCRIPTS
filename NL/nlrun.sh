Pull Command from Local Machine:

sudo docker pull 192.168.104.2:5000/network-lab


Run Command:

xhost +

sudo docker run --rm -it     --name networking-lab     --net=host     --cap-add=NET_ADMIN     --cap-add=NET_RAW     --cap-add=SYS_ADMIN     --cap-add=SYS_PTRACE     -v /var/run/docker.sock:/var/run/docker.sock     -v /tmp/.X11-unix:/tmp/.X11-unix     -v $HOME/kathara_labs:/home/netuser/kathara_labs     -e DISPLAY=$DISPLAY     -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native     -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native     --privileged     --user root     192.168.104.2:5000/network-lab /bin/bash


Pull Command Digital Ocean:

sudo docker pull apsit-docker-repo.sanskrutimhatre.tech/network-lab:latest


Run Command:

xhost +

sudo docker run --rm -it     --name networking-lab     --net=host     --cap-add=NET_ADMIN     --cap-add=NET_RAW     --cap-add=SYS_ADMIN     --cap-add=SYS_PTRACE     -v /var/run/docker.sock:/var/run/docker.sock     -v /tmp/.X11-unix:/tmp/.X11-unix     -v $HOME/kathara_labs:/home/netuser/kathara_labs     -e DISPLAY=$DISPLAY     -e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native     -v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native     --privileged     --user root     apsit-docker-repo.sanskrutimhatre.tech/network-lab/network-lab /bin/bash
