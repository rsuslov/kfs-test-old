FROM ubuntu:18.04

RUN set -x && \
    apt-get update && \
    apt-get install -y pkg-config uuid-dev \
    bison glusterfs-client libfuse-dev zlib1g-dev \
    check make cmake gcc autoconf automake \
    git vim && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY conf/zlog.conf ~/zlog.conf

COPY scripts/kfs.sh /workdir/kfs.sh
