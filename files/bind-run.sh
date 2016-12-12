#!/bin/bash

python /files/mako-render.py /files/named.conf.mako /config.yaml > /etc/named.conf

/usr/sbin/named -u named -g
