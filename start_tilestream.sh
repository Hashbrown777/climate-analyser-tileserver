#!/bin/bash

nohup $PWD/tilestream/index.js start --uiPort=80 --tilePort=80 --tiles=$PWD/tiles --host=118.138.241.181 &
