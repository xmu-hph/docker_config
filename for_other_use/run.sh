#!/bin/bash
set -Ceu
imgroot="ph210950/traffic_signal_control:"
imgtag="test"
imgname=$imgroot$imgtag
docker build -t $imgname .
#docker push $imgname
#docker rmi -f $imgname
docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host --name=hupenghui-$imgtag $imgname /bin/bash