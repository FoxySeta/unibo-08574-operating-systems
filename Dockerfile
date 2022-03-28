#syntax=docker/dockerfile:1
FROM debian:bullseye

RUN apt-get -y update && apt-get -y install gnupg2 && \
  echo 'deb http://ppa.launchpad.net/virtualsquare/umps/ubuntu focal main' \
  | tee /etc/apt/sources.list.d/virtualsquare-ubuntu-umps-focal.list && \
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 \
  --recv-keys 046AB1F65C49333A && apt-get -y install xauth umps3 \
  && rm -rf /var/lib/apt/lists/*

RUN apt-get -y update && apt-get -y install cmake doxygen gcc g++ \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 8887

#CMD umps3
