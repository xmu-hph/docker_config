FROM ph210950/traffic_signal_control:nvcc_torch210_cuda118_cudnn8_ubuntu2204_vscode_base_image_traffic
#看看什么系统，python位置
RUN pip install transformers huggingface_hub
RUN apt install git-lfs
RUN git lfs install
WORKDIR /root
COPY ./run.py .
ENV HF_ENDPOINT=https://hf-mirror.com
RUN python run.py
