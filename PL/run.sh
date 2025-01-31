xhost +

sudo docker run -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -p 5000:5000 --name pylabv-container fakee123/test-pylab:v1.0