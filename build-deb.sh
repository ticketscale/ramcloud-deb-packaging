#!/usr/bin/env bash
cd /data && \
apt-get update && \
apt-get install ruby-dev rubygems-integration build-essential -y && \
gem install fpm && \
mkdir -p /data/deb/opt/ramcloud/ && \
mv /data/RAMCloud/obj /data/deb/opt/ramcloud/ && \
fpm -s dir -t deb -n ramcloud -v 0.0.1 --license apache2 --vendor ticketscale.io --deb-no-default-config-files -C /data/deb/ opt
ls -la
