
FROM ubuntu:12.04
MAINTAINER Aleksandr Zykov <tiger@mano.email>

ENV DEBIAN_FRONTEND noninteractive

RUN echo "System updates" &&\
    ( \
        apt-get update -q &&\
        apt-get upgrade -qy --no-install-recommends \
    ) && \
    apt-get clean -qy

RUN echo "Runtime requirements" &&\
    ( \
        apt-get install -qy --no-install-recommends \
            coreutils \
            dnsutils \
            iputils-ping \
            ca-certificates \
            wget \
            curl \
            net-tools \
            iptables \
            figlet \
    ) && \
    apt-get clean -qy

RUN echo "Development requirements" &&\
    ( \
        apt-get install -qy --no-install-recommends \
            git \
            cmake \
            g++ \
            python3 \
            python3-dev \
            autotools-dev \
            libicu-dev \
            build-essential \
            libbz2-dev \
            libssl-dev \
            libncurses5-dev \
            doxygen \
            libreadline-dev \
            dh-autoreconf \
            python2.7-dev \
    ) && \
    apt-get clean -qy
    
RUN figlet 'Ready!'
