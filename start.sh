#!/usr/bin/env bash

set -e

service nginx start
consul-template -consul="$CONSUL_URL:8500" -template="/templates/services.ctmpl:/etc/nginx/conf.d/service.conf:service nginx reload"

