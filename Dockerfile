FROM ubuntu:13.10
RUN apt-get update
RUN apt-get install -y mono-devel

RUN apt-get install -y libtool autoconf g++ gettext make git
RUN git clone https://github.com/mono/mono
RUN cd mono && \ 
    ./autogen.sh   --prefix /usr && \
    make get-monolite-latest && \
    make && \
    make install
