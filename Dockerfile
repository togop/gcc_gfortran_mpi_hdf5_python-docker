FROM debian:stable-slim
MAINTAINER Todor Gitchev <todor.gitchev@izb.unibe.ch>

ENV DEBIAN_FRONTEND noninteractive

# install all 
RUN apt-get update --yes
RUN apt-get install --yes gcc
RUN apt-get install --yes gfortran
RUN apt-get install --yes cmake
RUN apt-get install --yes mpich libmpich-dev
RUN apt-get install --yes libhdf5-103 libhdf5-cpp-103 libhdf5-dev libhdf5-mpich-dev
RUN apt-get install --yes curl
RUN curl https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -o Miniconda3-latest-Linux-x86_64.sh
RUN chmod +x Miniconda3-latest-Linux-x86_64.sh
RUN ./Miniconda3-latest-Linux-x86_64.sh -b

# run a CMD to show conda is installed
#CMD conda list
