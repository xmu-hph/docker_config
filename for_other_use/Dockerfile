FROM nvcr.io/nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04
#cuda:11.8.0-cudnn8-devel-ubuntu22.04
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse" > /etc/apt/sources.list
#RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
#RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
#RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb http://security.ubuntu.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
#RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt update && apt install -y build-essential cmake python3 wget unzip git python3-pip openssh-client libxrender1 libgl1 swig vim
#RUN echo | ssh-keygen -t rsa -N ""
RUN ln -s /usr/bin/python3 /usr/bin/python