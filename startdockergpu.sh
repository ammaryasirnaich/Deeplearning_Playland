
# Granting access to X server with xhost. One can use root user or any localuser

xhost local:root
# xhost +SI:localuser:root
# xhost +SI:localuser:<username>
docker run -it --rm -e DISPLAY=${DISPLAY} --gpus all --net=host --ipc=host --privileged -env="QT_X11_NO_MITSHM=1" -v /tmp/.X11-unix:/tmp/.X11-unix --name gpu_machine dl_playland:gpu


# docker run -it --rm -e DISPLAY=${DISPLAY} --runtime=nvidia --net=host --ipc=host --privileged -env="QT_X11_NO_MITSHM=1" -v /tmp/.X11-unix:/tmp/.X11-unix --name gpu_machine dl_playland:gpu

#docker run --runtime=nvidia --net=host --ipc=host --privileged --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --name gpu_machine dl_playland:gpu
#docker run -it --name gpu_machine -e DISPLAY=${DISPLAY} -v /tmp/.X11-unix:/tmp/.X11-unix dl_playland:gpu

#docker run --runtime=nvidia --net=host --ipc=host --privileged --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --name gpu_machine dl_playland:gpu
