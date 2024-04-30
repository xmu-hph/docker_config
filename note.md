# 文件意义

做实验的时候老是忘记这个镜像是从哪里构建出来的，所以导致自己每次都会忘记这个镜像中有哪些部件。很令人头疼，尤其是在参与多个项目的时候。所以特此记录构建镜像的全部信息。

# for automl

`for automl`文件夹主要是为了automl问题构建的镜像，基础镜像为：`nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04`，对于其中的镜像我们做了修改，具体包括：
1. 修改`apt`源为阿里源，通过`apt`安装`python`和`pip`工具，构建基本的编译环境。
2. 添加`ssh key`，主要目的是为了保持密钥的一致性，方便一次构建处处可用。
3. 修改`pip`源为阿里源，通过`pip`安装`torch`等工具包，方便调用库函数。
4. 修改环境变量为`bash`，并设置工作目录为`root`。
5. 安装其他必要的库函数：`loguru`等。

镜像名命名为：`harbor.4pd.io/lab-platform/pk_platform/model_services/hph_for_automl_base:torch201_cuda118_cudnn8_ubuntu2204_debug001`

如果适用任何问题，我们会起新的名字。

# for self study
