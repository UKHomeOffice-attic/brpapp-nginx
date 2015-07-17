#!/bin/bash

if [[ -d /public ]]; then
  chmod 0755 /public
fi

/usr/sbin/nginx -c /etc/nginx/nginx.conf
