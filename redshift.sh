#!/usr/bin/bash

if ! pidof redshift >/dev/null; then
  redshift -l 49.76:18.26 -t 5700:4800 -g 0.8 -m randr -v
fi
