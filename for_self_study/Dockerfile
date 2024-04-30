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
RUN echo | ssh-keygen -t rsa -N ""
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
WORKDIR /root
ENV SHELL /bin/bash
RUN pip install flask loguru numpy pandas
RUN git config --global --add core.sshCommand "ssh -o StrictHostKeyChecking=no"
RUN pip install traci pandas tqdm gym loguru pfrl
RUN git clone git@github.com:cityflow-project/CityFlow.git
RUN cd CityFlow && pip install .
RUN pip install argparse optuna gym[box2d] mujoco mediapy
RUN git clone https://github.com/google-deepmind/mujoco_menagerie.git
CMD ["/bin/bash"]