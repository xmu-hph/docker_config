#!/bin/bash
set -Ceu
imgroot="harbor.4pd.io/lab-platform/pk_platform/model_services/hph_for_automl_base:"
imgtag="torch201_nvcc_cuda118_cudnn8_ubuntu2204_tts"
imgname=$imgroot$imgtag
docker build -t $imgname .
docker push $imgname
#docker rmi -f $imgname
docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host -v /home/thu_huph22/mnt:/home/mnt --name=hupenghui-$imgtag $imgname /bin/bash