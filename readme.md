# 创建镜像的命令

```sh
FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
#cuda:11.8.0-runtime-ubuntu22.04
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt update && apt install -y build-essential cmake python3
RUN apt-get update && apt-get install -y openssh-client
RUN echo | ssh-keygen -t rsa -N ""
RUN mkdir ~/.pip
RUN touch ~/.pip/pip.conf
RUN echo "[global]" > ~/.pip/pip.conf 
RUN echo "index-url = http://mirrors.aliyun.com/pypi/simple/" >> ~/.pip/pip.conf 
RUN echo "[install]" >> ~/.pip/pip.conf 
RUN echo "trusted-host=mirrors.aliyun.com" >> ~/.pip/pip.conf
RUN apt install -y python3-pip
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install jupyterlab
RUN apt-get install -y git
RUN git config --global user.email "hupenghui"
RUN git config --global user.name "hupenghui"
WORKDIR /root
RUN python3 -m pip install eclipse-sumo
CMD ["/bin/bash"]
# 设置默认 shell 为 bash
ENV SHELL /bin/bash
#cuda:11.8.0-runtime-ubuntu22.04
RUN python3 -m pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://mirror.sjtu.edu.cn/pytorch-wheels/cu118
# 设置容器默认启动命令为 bash
CMD ["/bin/bash"]
```

主要思路就是修改国内源，安装python、git、ssh，安装pytorch使用国内源。

| 源站 | 替换为 |
| ---- | ----- |
|gcr.io|gcr.nju.edu.cn|
|k8s.gcr.io|gcr.nju.edu.cn/google-containers|
|ghcr.io|ghcr.nju.edu.cn|
|nvcr.io|nvcr.nju.edu.cn|
|quay.io|quay.nju.edu.cn|
|registry.k8s.io|k8s.mirror.nju.edu.cn|
|docker pull gcr.io/cadvisor/cadvisor:v0.39.3|docker pull gcr.nju.edu.cn/cadvisor/cadvisor:v0.39.3|

docker也需要修改为国内的镜像源，拉取镜像的速度才会快。[南京大学](https://sci.nju.edu.cn/9e/05/c30384a564741/page.htm)，[daocloud](https://www.nenufm.com/dorthl/291/)

```sh
#/etc/docker/daemon.json
{
    "registry-mirrors": [
        "https://docker.nju.edu.cn",
        "https://dockerproxy.com",
        "https://docker.m.daocloud.io"
    ],
    "runtimes": {
        "nvidia": {
            "args": [],
            "path": "nvidia-container-runtime"
        }
    }
}
```
