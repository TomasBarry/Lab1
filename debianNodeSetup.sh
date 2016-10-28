#!/bin/bash


# This script should be run on an unbaked Debian node machine
# This script is intended to be run on Debian nodes hosted on SCSSNebula

# Install Docker and make sure it has been installed

wget -qO- https://get.docker.com/ | sh
docker version


# Configure the proxy for Docker to use to get out of SCSSNebula

mkdir /etc/systemd/system/docker.service.d
touch /etc/systemd/system/docker.service.d/http-proxy.conf
echo '[Service]' >> /etc/systemd/system/docker.service.d/http-proxy.conf
echo 'Environment="HTTP_PROXY=http://www-proxy.scss.tcd.ie:8080/"' >> /etc/systemd/system/docker.service.d/http-proxy.conf
systemctl daemon-reload
systemctl show --property Environment docker
systemctl restart docker
docker run hello-world
