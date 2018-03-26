FROM debian:stretch-slim

RUN apt-get update && apt-get install -y curl

RUN curl -s https://packagecloud.io/install/repositories/varnishcache/varnish60/script.deb.sh | bash

RUN apt-get install -y varnish

ADD start.sh /

ENV VCL_CONFIG=/etc/varnish/default.vcl
ENV CACHE_SIZE=100m
ENV PORT=80

CMD "/start.sh"
