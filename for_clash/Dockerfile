FROM ubuntu:22.04
#cuda:11.8.0-cudnn8-devel-ubuntu22.04
RUN apt update
RUN apt install -y ca-certificates
RUN update-ca-certificates
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" > /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN echo "deb-src https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" >> /etc/apt/sources.list
RUN apt update && apt install -y ca-certificates
RUN apt install -y build-essential cmake wget unzip git openssh-client libxrender1 libgl1 swig vim
RUN git config --global user.email "hupenghui"
RUN git config --global user.name "hupenghui"
COPY id_rsa id_rsa.pub /root/.ssh/
RUN chmod 600 /root/.ssh/id_rsa
RUN chmod 644 /root/.ssh/id_rsa.pub
ENV SHELL /bin/bash
RUN git config --global --add core.sshCommand "ssh -o StrictHostKeyChecking=no"
WORKDIR /root
RUN apt install -y curl wget
RUN curl -sSL https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh | bash
#RUN /bin/bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
CMD ["/bin/bash"]