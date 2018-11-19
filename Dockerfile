FROM ubuntu:18.04

RUN apt-get update
RUN  apt-get install -y software-properties-common
RUN  add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN  apt-get install -y ethereum

RUN mkdir voxnet
RUN cd voxnet

COPY voxnet.json voxnet/voxnet.json