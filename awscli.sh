#!/bin/bash

echo "Installing AWS CLI v2..."
###############################################################
sudo apt-get update
sudo apt-get install unzip -y
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
################################################################
echo "AWS CLI v2 installation completed."

rm -rf awscliv2.zip