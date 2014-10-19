#!/bin/bash

function int-ip { /sbin/ifconfig $1 | grep "inet addr" | awk -F: '{print $2}' | awk '{print $1}'; }

nohup $PWD/tilestream/index.js start --uiPort=80 --tilePort=80 --tiles=$PWD/tiles --host=$(int-ip eth0) &
