FROM rocker/r-ubuntu:18.04

RUN add-apt-repository ppa:openjdk-r/ppa && apt-get update && apt-get install -y openjdk-8-jdk
RUN apt-get install -y procps && apt-get install nano

RUN wget https://github.com/mikessh/vdjtools/releases/download/1.2.1/vdjtools-1.2.1.zip
RUN unzip vdjtools-1.2.1.zip
ENV PATH $PATH:$HOME/vdjtools-1.2.1
RUN chmod 777 vdjtools-1.2.1/vdjtools
RUN vdjtools Rinstall
