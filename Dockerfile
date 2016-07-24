
FROM ubuntu:16.04
MAINTAINER Aleksandr Zykov <tiger@mano.email>

RUN apt-get update -q &&\
    DEBIAN_FRONTEND=noninteractive apt-get upgrade -qy --no-install-recommends

RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy --no-install-recommends \
       coreutils dnsutils iputils-ping ca-certificates wget curl net-tools iptables
       
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qy --no-install-recommends \
       git cmake g++ python3 python3-dev autotools-dev libicu-dev build-essential \
       libbz2-dev libboost-all-dev libssl-dev libncurses5-dev doxygen \
       libreadline-dev dh-autoreconf
