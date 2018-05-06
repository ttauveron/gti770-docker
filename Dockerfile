FROM ubuntu:18.04

RUN apt-get update && \
apt-get install -y wget


RUN wget https://repo.anaconda.com/archive/Anaconda3-5.1.0-Linux-x86_64.sh

RUN chmod +x Anaconda3-5.1.0-Linux-x86_64.sh && \
./Anaconda3-5.1.0-Linux-x86_64.sh -b -p /opt/Anaconda3

ENV PATH="/opt/Anaconda3/bin:${PATH}"

RUN conda install --yes -c conda-forge opencv matplotlib


