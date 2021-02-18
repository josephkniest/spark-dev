# Image

FROM ubuntu

# Pull ubuntu packages 

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y git
RUN git clone https://github.com/bitcoin/bitcoin.git
RUN apt-get install -y nano curl make gcc libevent-dev
RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-test-dev libboost-thread-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install build-essential libtool autotools-dev automake pkg-config bsdmainutils python3
COPY ./ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz /root/
RUN tar xf /root/ripgrep-0.5.2-x86_64-unknown-linux-musl.tar.gz
RUN cp ./ripgrep-0.5.2-x86_64-unknown-linux-musl/rg /bin
