#!/bin/bash
set -Ceu
imgroot="ph210950/traffic_signal_control:"
imgtag="nvcc_torch210_cuda118_cudnn8_ubuntu2204_vscode_base_image_traffic_transformers"
imgname=$imgroot$imgtag
docker build -t $imgname .
#docker push $imgname
#docker rmi -f $imgname
#docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host 
#-v /home/thu_huph22/mnt:/root/mnt --name=hupenghui-$imgtag $imgname /bin/bash