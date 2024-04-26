FROM ph210950/traffic_signal_control:traffic_torch201_cuda118_cudnn8_ubuntu2204
#RUN git config --global --add core.sshCommand "ssh -o StrictHostKeyChecking=no"
#RUN apt install -y libxrender1 libgl1 unzip
#RUN pip install traci pandas tqdm gym loguru pfrl
#RUN git clone git@github.com:cityflow-project/CityFlow.git
#RUN cd CityFlow && pip install .
#CMD ["/bin/bash"]
RUN apt install -y swig vim
RUN pip install argparse optuna gym[box2d] mujoco mediapy
RUN git clone https://github.com/google-deepmind/mujoco_menagerie.git
#RUN pip install mujoco_py
#RUN wget https://mujoco.org/download/mujoco210-linux-x86_64.tar.gz
#RUN mkdir ~/.mujoco
#RUN tar -zxvf mujoco210-linux-x86_64.tar.gz -C ~/.mujoco
#RUN echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/.mujoco/mujoco210/bin' >> ~/.bashrc
RUN ln -s /usr/bin/python3 /usr/bin/python

