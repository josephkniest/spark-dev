# Image

FROM ubuntu

# 

RUN apt-get update

RUN apt-get install -y sudo

RUN sudo apt-get install -y git

RUN git clone https://github.com/apache/spark.git

RUN sudo apt-get install -y wget

RUN sudo apt install -y openjdk-8-jdk
