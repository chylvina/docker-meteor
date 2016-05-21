#!/bin/bash
set -e

# init ubuntu
apt-get update -y
apt-get install -y curl bzip2 build-essential python git

# https://github.com/meteor/meteor/issues/4019
apt-get install locales
locale-gen en_US.UTF-8
localedef -i en_GB -f UTF-8 en_US.UTF-8

# install node
NODE_VERSION=0.10.43
NODE_ARCH=x64

# check we need to do this or not

NODE_DIST=node-v${NODE_VERSION}-linux-${NODE_ARCH}

cd /tmp
curl -O -L http://nodejs.org/dist/v${NODE_VERSION}/${NODE_DIST}.tar.gz
tar xvzf ${NODE_DIST}.tar.gz
rm -rf /opt/nodejs
mv ${NODE_DIST} /opt/nodejs

ln -sf /opt/nodejs/bin/node /usr/bin/node
ln -sf /opt/nodejs/bin/npm /usr/bin/npm

# install meteor
curl -sL https://install.meteor.com | sed s/--progress-bar/-sL/g | /bin/sh
