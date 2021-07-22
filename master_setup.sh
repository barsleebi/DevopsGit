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

#Install DevOps tools

#Jenkins Install
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
sudo yum install jenkins java-11-openjdk-devel -y
sudo systemctl daemon-reload

#Start Jenkins service
sudo systemctl start jenkins
sudo systemctl enable jenkins

#Ansible Install
yum list | grep ansible
yum install epel-release -y
yum install ansible -y
:'
#sudo amazon-linux-extras install epel - use this for AWS EC2 instance
we are currently using Virtual box VM hence this would not apply
'
#Maven Install
yum install maven -y

#Git Install
yum install git -y

#Docker Install
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y

#Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

#Below paths should be added to /etc/profile
:'
=============================================================================
	export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.11.0.9-2.el8_4.x86_64
	export PATH=$JAVA_HOME/bin:$PATH
	export MAVEN_HOME=/usr/share/maven
=============================================================================
[root@cmaster ansible]# vi /etc/profile
[root@cmaster ansible]# source /etc/profile
[root@cmaster ansible]# echo $JAVA_HOME
/usr/lib/jvm/java-11-openjdk-11.0.11.0.9-2.el8_4.x86_64
[root@cmaster ansible]#

'