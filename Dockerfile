
FROM ubuntu
MAINTAINER Aleksandr Zykov <tiger@mano.email>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q &&\
    apt-get upgrade -qy --no-install-recommends

RUN apt-get install -qy --no-install-recommends \
    coreutils dnsutils iputils-ping ca-certificates wget curl net-tools iptables
       
RUN apt-get install -qy --no-install-recommends \
    git cmake g++ python3 python3-dev autotools-dev libicu-dev build-essential \
    libbz2-dev libboost-all-dev libssl-dev libncurses5-dev doxygen \
    libreadline-dev dh-autoreconf
    
RUN apt-get clean &&\
    rm -rf /var/lib/apt/lists/*
