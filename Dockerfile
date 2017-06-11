FROM ubuntu:xenial

RUN set -e; \
    apt-get update; \
    apt-get install -y git-core \
                       build-essential \
                       libssl-dev \
                       libncurses5-dev \
                       unzip \
                       wget \
                       gawk \
                       zlib1g-dev \
                       subversion mercurial;

RUN set -e; \
    git clone https://github.com/openwrt/openwrt.git; \
    cd openwrt; \
    ./scripts/feeds update -a; \
    ./scripts/feeds install -a;
