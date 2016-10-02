FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update

RUN apt-get install -y ca-certificates wget xvfb python python-dev python-pip curl unzip libxml2-dev libxslt-dev
RUN apt-get install -y zlib1g-dev libblas-dev liblapack-dev gfortran libjpeg-dev
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
RUN apt-get update
RUN apt-get install -y google-chrome-stable