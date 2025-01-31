xhost +

sudo docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 5000:5000 --name pylabv-container 192.168.104.2:5000/pylab
