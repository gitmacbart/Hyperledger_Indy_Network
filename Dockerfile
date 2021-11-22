FROM ubuntu:16.04
USER root:root
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y gnupg

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys CE7709D068DB5E88

RUN bash -c 'echo "deb https://repo.sovrin.org/deb xenial stable" >> /etc/apt/sources.list'

RUN apt-get install -y apt-transport-https && \
    apt-get update

RUN apt-get install -y indy-node