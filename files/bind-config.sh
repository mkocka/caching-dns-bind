#!/bin/bash

python /files/mako-render.py /files/named.conf.mako /files/config.yaml > /etc/named.conf
/usr/libexec/generate-rndc-key.sh
