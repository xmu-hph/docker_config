#!/bin/bash
set -Ceu
imgroot="ph210950/traffic_signal_control:"
imgtag="traffic_torch201_cuda118_cudnn8_ubuntu2204"
imgname=$imgroot$imgtag
docker build -t $imgname .
#docker push $imgname
#docker rmi -f $imgname
docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host -v /home/thu_huph22/mnt:/root/hupenghui --name=hupenghui-$imgtag $imgname /bin/bash
#docker push harbor.4pd.io/lab-platform/pk_platform/model_services/physics_hph:traffic_torch201_cuda118_cudnn8_ubuntu2204

docker run -d --gpus all -p 3000:8080 --add-host=host.docker.internal:host-gateway -v ollama:/root/.ollama -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://host.docker.internal:11434 --name=open-webui --restart always ghcr.nju.edu.cn/open-webui/open-webui:main
docker run -d --gpus all -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name hupenghui-open-webui --restart always ghcr.nju.edu.cn/open-webui/open-webui:main
docker run -d --gpus all -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://host.docker.internal:11434  --name open-webui --restart always ghcr.nju.edu.cn/open-webui/open-webui:main
# ok
docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama

