FROM nvcr.io/nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04
#cuda:11.8.0-cudnn8-devel-ubuntu22.04
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
ENV SHELL /bin/bash
RUN pip install flask loguru numpy pandas
RUN jupyter lab --generate-config
RUN echo "c.ServerApp.terminado_settings = {'shell_command': ['/bin/bash']}" >> ~/.jupyter/jupyter_lab_config.py
RUN git config --global --add core.sshCommand "ssh -o StrictHostKeyChecking=no"
RUN pip install traci pandas tqdm gym loguru pfrl
WORKDIR /root
RUN git clone git@github.com:cityflow-project/CityFlow.git
RUN cd CityFlow && pip install .
RUN pip install argparse optuna gym[box2d] mujoco mediapy libsumo PyYAML lmdb
RUN pip install torch_scatter
ENV SUMO_HOME="/usr/local/lib/python3.10/dist-packages/sumo"
ENV PYTHONPATH="$SUMO_HOME/tools:$PYTHONPATH"
RUN pip install torch_geometric
RUN pip install torch-sparse torch-cluster torch-spline-conv
#RUN git clone git@github.com:google-deepmind/mujoco_menagerie.git /home
CMD ["/bin/bash"]