FROM ros:humble 

RUN apt-get update && apt-get -y install \
    ssh
