FROM ubuntu:18.04

MAINTAINER @ndaidong

ENV LANG C.UTF-8

RUN apt update --fix-missing && \
  apt upgrade -y && \
  apt install --no-install-recommends -y wget nano make openssl ca-certificates htop && \
  cd /home && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /home
