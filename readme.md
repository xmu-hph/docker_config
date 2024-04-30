# 创建镜像的命令

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
