#!/bin/bash

sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo systemctl status docker


sudo yum update -y

sudo yum install maven -y
