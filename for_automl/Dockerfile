FROM nvcr.io/nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04
#cuda:11.8.0-runtime-ubuntu22.04
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt update && apt install -y build-essential cmake python3 wget unzip git python3-pip openssh-client libxrender1 libgl1 swig vim
#RUN echo | ssh-keygen -t rsa -N ""
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN mkdir ~/.pip
RUN touch ~/.pip/pip.conf
RUN echo "[global]" > ~/.pip/pip.conf 
RUN echo "index-url = http://mirrors.aliyun.com/pypi/simple/" >> ~/.pip/pip.conf 
RUN echo "[install]" >> ~/.pip/pip.conf 
RUN echo "trusted-host=mirrors.aliyun.com" >> ~/.pip/pip.conf
RUN pip install --upgrade pip
RUN pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://mirror.sjtu.edu.cn/pytorch-wheels/cu118
RUN pip install jupyterlab eclipse-sumo
RUN git config --global user.email "hupenghui"
RUN git config --global user.name "hupenghui"
COPY id_rsa id_rsa.pub /root/.ssh/
RUN chmod 600 /root/.ssh/id_rsa
RUN chmod 644 /root/.ssh/id_rsa.pub
RUN pip install flask loguru numpy pandas
RUN jupyter lab --generate-config
RUN echo "c.ServerApp.terminado_settings = {'shell_command': ['/bin/bash']}" >> ~/.jupyter/jupyter_lab_config.py
WORKDIR /root
# 设置默认 shell 为 bash
ENV SHELL /bin/bash
# 设置容器默认启动命令为 bash
CMD ["/bin/bash"]