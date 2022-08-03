#!/usr/bin/env bash

mkdir -p tmp

curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "tmp/AWSCLIV2.pkg"
sudo installer -pkg tmp/AWSCLIV2.pkg -target /

rm -rf tmp