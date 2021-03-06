#!/bin/bash

# Move nginx binary to $PATH
rm /usr/local/nginx/conf/nginx.conf
ln -s /stream/nginx.conf /usr/local/nginx/conf/nginx.conf

# Install PIP
apt update
apt install -y python-pip

# Install AWSCLI
pip install awscli

# Install Dependencies for Goofys
apt install -y fuse syslog-ng

# Install Goofys
wget bit.ly/goofys-latest -O /usr/bin/goofys
chmod +x /usr/bin/goofys

# Install Supervisor
apt install -y supervisor
mkdir -p /var/log/supervisord/

# Install NPM
apt install -y npm 