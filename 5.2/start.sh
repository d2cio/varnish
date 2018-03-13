#!/bin/bash

set -e

exec bash -c \
  "exec varnishd -j unix,user=vcache -F \
  -f $VCL_CONFIG \
  -s malloc,$CACHE_SIZE \
  -a 0.0.0.0:$PORT"
