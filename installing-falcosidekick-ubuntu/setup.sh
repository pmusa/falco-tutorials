#!/bin/bash

# install Falco
curl -s https://falco.org/repo/falcosecurity-packages.asc | apt-key add -
echo "deb https://download.falco.org/packages/deb stable main" | \
tee /etc/apt/sources.list.d/falcosecurity.list
apt-get update
apt-get -y install linux-headers-$(uname -r)
apt-get install -y falco
systemctl start falco

# pull redis image to speed up running redis later
docker pull redis/redis-stack-server:latest
