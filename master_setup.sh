#!/bin/bash

#Run this script in Master server, this is written based on CentOS
sudo yum upgrade
sudo yum update

#installing dependency for devops tools and troubleshooting
sudo yum java-11-openjdk-devel -y
sudo yum install wget -y
sudo yum install net-tools -y
yum install lsof -y
yum install vim -y
yum install yum-utils -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install epel-release -y

sleep 2
#installing all Devops tools
sudo yum install git -y
sleep 2
sudo yum install maven -y
sleep 2
curl -fsSL https://get.docker.com/ | sh
sleep 2
sudo yum install jenkins -y
sleep 2
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sleep 2
sudo yum install ansible -y
sleep 2



#Starting services after installation
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl start docker
#Enable services to start during StartUp
sudo systemctl enable jenkins
sudo systemctl enable docker
###############################################################################
#After install reffer md for steps on setting up Jenkins, JDK and Ansible#
###############################################################################