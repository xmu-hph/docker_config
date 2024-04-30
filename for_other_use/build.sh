# 启动openwebui可视化交互大语言模型
docker run -d --gpus all -p 3000:8080 --add-host=host.docker.internal:host-gateway -v ollama:/root/.ollama -v open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://host.docker.internal:11434 --name=open-webui --restart always ghcr.nju.edu.cn/open-webui/open-webui:main
docker run -d --gpus all -p 3000:8080 --add-host=host.docker.internal:host-gateway -v open-webui:/app/backend/data --name hupenghui-open-webui --restart always ghcr.nju.edu.cn/open-webui/open-webui:main
docker run -d --gpus all -p 3001:8080 --add-host=host.docker.internal:host-gateway -v /home/thu_huph22/huph_open-webui:/app/backend/data -e OLLAMA_BASE_URL=http://127.0.0.1:11435  --name hph_open-webui --restart always ghcr.nju.edu.cn/open-webui/open-webui:main

# 启动ollama管理大语言模型
docker run -d --gpus all -p 11434:11434 -v ollama:/root/.ollama --name=ollama docker.nju.edu.cn/ollama/ollama:0.1.32
docker run -d --gpus all --privileged --net=host --pid=host --ipc=host -v ollama:/root/.ollama --name=hupenghui-ollama docker.nju.edu.cn/ollama/ollama:0.1.32

# 启动node学习前端编程
docker run -itd --gpus all --privileged --net=host --pid=host --ipc=host -v /home/thu_huph22/mynodejs:/root/mnt --name=hupenghui-nodejs node:22.0-bullseye
