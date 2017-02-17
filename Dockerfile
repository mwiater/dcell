FROM ruby:2.4.0-slim

MAINTAINER Matt J. Wiater "matt@brightpixel.com"

RUN apt-get update && \
      apt-get upgrade -y && \
      apt-get install -y build-essential libzmq3-dev && \
      apt-get autoclean && \
      apt-get autoremove && \
      rm -rf /var/cache/apk/*

ADD . /app
RUN chown -R nobody:nogroup /app
USER nobody
EXPOSE 9001
EXPOSE 9002
WORKDIR /app

RUN bundle install
