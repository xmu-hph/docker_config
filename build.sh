#!/bin/bash
set -e
imgroot="ph210950/traffic_signal_control:"
imgtag="traffic_torch201_cuda118_cudnn8_ubuntu2204"
imgname=$imgroot$imgtag
docker build -t $imgname .
#docker push $imgname
#docker rmi -f $imgname
docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host -v /home/thu_huph22/mnt:/root/hupenghui --name=hupenghui-$imgtag $imgname /bin/bash
