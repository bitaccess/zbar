# Dockerfile for github actions
#FROM ubuntu:20.04
FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
#RUN apt-get install build-essential debhelper devscripts npm curl -y
RUN apt-get install build-essential debhelper devscripts curl -y

#ubuntu 16.04 comes with nodejs 4, nexe need at least v10

#Install Node.js 14 LTS
#RUN curl -sL https://deb.nodesource.com/setup_14.x | bash ; apt-get install -y nodejs

#match the exact version used by nexe
#RUN curl -o nodejs_14.15.3-1nodesource1_amd64.deb https://deb.nodesource.com/node_14.x/pool/main/n/nodejs/nodejs_14.15.3-1nodesource1_amd64.deb && \
#    apt install -y ./nodejs_14.15.3-1nodesource1_amd64.deb
#moved to entrypoint

COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]
