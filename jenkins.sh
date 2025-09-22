#!/bin/bash

echo "======================================="
echo "################################## installing JAVA ##################################"
echo "======================================="

sudo apt update
sudo apt install fontconfig openjdk-21-jre -y
java -version

echo "======================================="
echo "################################## installing jenkins ##################################"
echo "======================================="

sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc] https://pkg.jenkins.io/debian-stable binary/" | \
  sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt update
sudo apt install jenkins -y

echo "======================================="
echo "################################## jenkins installed successfully ##################################"
echo "======================================="

echo "You can access Jenkins using http://<your-server-ip>:8080"
echo "To get the initial admin password, use the following command:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
