# Image

FROM ubuntu

# Pull ubuntu packages 

RUN apt-get update

RUN apt-get install -y sudo

RUN apt-get install -y git

RUN git clone https://github.com/bitcoin/bitcoin.git

RUN apt-get install -y nano

RUN apt-get install -y curl

RUN apt-get install -y make

RUN apt-get install -y gcc

RUN apt-get install -y libevent-dev

RUN apt-get install -y libboost-dev

#RUN apt-get install build-essential libtool autotools-dev automake pkg-config bsdmainutils python3

RUN cd ./bitcoin ; ./contrib/install_db4.sh `pwd`

#./autogen.sh
#./configure
#make
