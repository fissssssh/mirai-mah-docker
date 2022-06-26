#!/bin/bash
TAG=v0.0.1

mkdir mcl
cd mcl
latest_download_url=""$(curl -s https://api.github.com/repos/iTXTech/mirai-console-loader/releases/latest | grep browser_download_url | cut -f4 -d "\"")""
wget -O mcl.zip $latest_download_url
unzip -d mcl mcl.zip
docker build -t mirai-mah-docker:$TAG .
docker push fissssssh/mirai-mah-docker:$TAG