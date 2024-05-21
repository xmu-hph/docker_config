#!/bin/bash
set -Ceu
imgroot="ph210950/traffic_signal_control:"
imgtag="ubuntu-xui-1"
imgname=$imgroot$imgtag
docker build -t $imgname .
docker push $imgname
#docker rmi -f $imgname
#docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host -v /home/thu_huph22/mnt:/home/mnt --name=hupenghui-$imgtag $imgname /bin/bash