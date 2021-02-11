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

RUN apt-get install -y libboost-system-dev libboost-filesystem-dev libboost-test-dev libboost-thread-dev

#RUN apt-get install -y build-essential libtool autotools-dev automake pkg-config bsdmainutils python3

RUN cd ./bitcoin ; ./contrib/install_db4.sh `pwd`
#./autogen.sh
#./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include"
#make
