#!/bin/bash

sudo apt-get update -y

sudo apt-get install openjdk-11-jdk -y

sudo apt-get install wget -y

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt-get update -y

sudo apt-get install jenkins -y


# Import a key file from Jenkins-CI to enable installation from the package:
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

# Upgrade the package manger
sudo yum upgrade