
# Granting access to X server with xhost. One can use root user or any localuser

xhost local:root
# xhost +SI:localuser:root
# xhost +SI:localuser:<username>
docker run -it --rm -e DISPLAY=${DISPLAY} --gpus all --net=host --ipc=host --privileged -env="QT_X11_NO_MITSHM=1" -v /tmp/.X11-unix:/tmp/.X11-unix --name gpu_machine dl_playland:gpu
