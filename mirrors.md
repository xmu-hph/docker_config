# docker 镜像源

| 源站 | 替换为 | 原例 | 目标例 |
| ---- | ----- | ---- | ----- |
|docker hub | docker.nju.edu.cn | docker pull ph210950/traffic_signal_control:traffic_nvcc_torch201_cuda118_cudnn8_ubuntu2204_debug003 | docker pull docker.nju.edu.cn/ph210950/traffic_signal_control:traffic_nvcc_torch201_cuda118_cudnn8_ubuntu2204_debug003 |
|gcr.io|gcr.nju.edu.cn| docker pull gcr.io/cadvisor/cadvisor:v0.39.3 | docker pull gcr.nju.edu.cn/cadvisor/cadvisor:v0.39.3 |
|k8s.gcr.io|gcr.nju.edu.cn/google-containers| docker pull k8s.gcr.io/kube-proxy:v1.18.6 | docker pull gcr.nju.edu.cn/google-containers/kube-proxy:v1.18.6 |
|ghcr.io|ghcr.nju.edu.cn| docker pull ghcr.io/github/super-linter:latest | docker pull ghcr.nju.edu.cn/github/super-linter:latest |
|nvcr.io|nvcr.nju.edu.cn| docker pull nvcr.io/nvidia/pytorch:21.12-py3 | docker pull ngc.nju.edu.cn/nvidia/pytorch:21.12-py3 |
|quay.io|quay.nju.edu.cn| docker pull quay.io/prometheus/prometheus:latest | docker pull quay.nju.edu.cn/prometheus/prometheus:latest |
|registry.k8s.io|k8s.mirror.nju.edu.cn| ---- | ---- |

docker也需要修改为国内的镜像源，拉取镜像的速度才会快。[南京大学](https://sci.nju.edu.cn/9e/05/c30384a564741/page.htm)，[daocloud](https://www.nenufm.com/dorthl/291/)

# github 镜像源

| 原例 | 目标例 |
| ---- | ---- |
| git clone https://github.com/cityflow-project/CityFlow.git | git clone https://gitclone.com/github.com/cityflow-project/CityFlow.git |

或者更改全局的源：`git config --global url."https://hub.fastgit.org/".insteadOf "https://github.com/"`

# pip 镜像源

```sh
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/

[install]
trusted-host=mirrors.aliyun.com
```

[南京大学](https://sci.nju.edu.cn/9e/05/c30384a564741/page.htm)

# conda 镜像源

```sh
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/msys2
custom_channels:
  conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch-lts: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  deepmodeling: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/
```

[南京大学](https://sci.nju.edu.cn/9e/05/c30384a564741/page.htm)

# apt 镜像源

```sh
# 默认注释了源码镜像以提高 apt update 速度，如有需要可自行取消注释
deb https://mirror.nju.edu.cn/ubuntu/ noble main restricted universe multiverse
# deb-src https://mirror.nju.edu.cn/ubuntu/ noble main restricted universe multiverse
deb https://mirror.nju.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
# deb-src https://mirror.nju.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
deb https://mirror.nju.edu.cn/ubuntu/ noble-backports main restricted universe multiverse
# deb-src https://mirror.nju.edu.cn/ubuntu/ noble-backports main restricted universe multiverse

# 以下安全更新软件源包含了官方源与镜像站配置，如有需要可自行修改注释切换
# deb https://mirror.nju.edu.cn/ubuntu/ noble-security main restricted universe multiverse
# # deb-src https://mirror.nju.edu.cn/ubuntu/ noble-security main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu/ noble-security main restricted universe multiverse
# deb-src http://security.ubuntu.com/ubuntu/ noble-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirror.nju.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse
# # deb-src https://mirror.nju.edu.cn/ubuntu/ noble-proposed main restricted universe multiverse
```

[南京大学](https://sci.nju.edu.cn/9e/05/c30384a564741/page.htm)

