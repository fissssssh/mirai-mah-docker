#!/bin/bash
if [[ -z $MIRAI_QQ ]] || [[ -z $MIRAI_PWD ]]; then
    echo "QQ or Password can not be empty."
    exit "-1"
fi
echo "Installing mirai-http-api plugin"
./mcl --update-package net.mamoe:mirai-api-http --channel stable-v2 --type plugin
echo "Start mirai-console"
./mcl --update <<EOF
login $MIRAI_QQ $MIRAI_PWD
EOF
