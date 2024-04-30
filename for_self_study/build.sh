#!/bin/bash
set -Ceu
imgroot="harbor.4pd.io/lab-platform/pk_platform/model_services/hph_for_self_study_base:"
imgtag="traffic_torch201_cuda118_cudnn8_ubuntu2204_debug001"
imgname=$imgroot$imgtag
docker build -t $imgname .
docker push $imgname
#docker rmi -f $imgname
docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host -v /home/thu_huph22/mnt:/root/hupenghui --name=hupenghui-$imgtag $imgname /bin/bash