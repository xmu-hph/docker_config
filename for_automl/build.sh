#!/bin/bash
set -Ceu
imgroot="harbor.4pd.io/lab-platform/pk_platform/model_services/hph_for_automl_base:"
imgtag="torch201_cuda118_cudnn8_ubuntu2204_debug001"
imgname=$imgroot$imgtag
docker build -t $imgname .
docker push $imgname
#docker rmi -f $imgname