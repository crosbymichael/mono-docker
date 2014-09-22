FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
    mono-devel \
    libtool \
    autoconf \
    g++ \
    gettext \
    make \
    git

RUN git clone https://github.com/mono/mono && \
    cd mono && \ 
    ./autogen.sh   --prefix /usr && \
    make get-monolite-latest && \
    make && \
    make install && \
    cd / && rm -rf mono
