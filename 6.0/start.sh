#!/bin/bash

set -e

exec bash -c \
  "exec varnishd -a 0.0.0.0:$PORT,PROXY,user=vcache,group=varnish,mode=660 \
  -f $VCL_CONFIG -F \
  -s malloc,$CACHE_SIZE"
