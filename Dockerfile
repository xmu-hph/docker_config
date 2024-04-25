FROM ph210950/traffic_signal_control:traffic_torch201_cuda118_cudnn8_ubuntu2204
#RUN git config --global --add core.sshCommand "ssh -o StrictHostKeyChecking=no"
#RUN apt install -y libxrender1 libgl1 unzip
#RUN pip install traci pandas tqdm gym loguru pfrl
#RUN git clone git@github.com:cityflow-project/CityFlow.git
#RUN cd CityFlow && pip install .
#CMD ["/bin/bash"]
RUN pip install argparse
RUN ln -s /usr/bin/python3 /usr/bin/python

