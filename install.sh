#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root through sudo." 1>&2
   exit 1
fi

RUNASUSER="sudo -u $SUDO_USER"

yum install git curl gcc gcc-c++ autoconf automake make bison flex diff patch tar bzip2 nodejs nodejs-devel npm

$RUNASUSER bash <<FIN
git clone https://github.com/mapbox/tilestream.git
FIN

cd tilestream

$RUNASUSER bash <<FIN
npm install
FIN
