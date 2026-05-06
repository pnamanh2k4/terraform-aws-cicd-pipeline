#!/bin/bash
sudo yum update -y
sudo yum install -y docker
sudo service docker start
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sleep 15
aws ecr get-login-password --region ap-southeast-1 | sudo docker login --username AWS --password-stdin 541692464957.dkr.ecr.ap-southeast-1.amazonaws.com
sudo docker pull 541692464957.dkr.ecr.ap-southeast-1.amazonaws.com/hk-eco-web-app:v1.0.0
sudo docker run -d -p 80:80 --name hk-eco-web 541692464957.dkr.ecr.ap-southeast-1.amazonaws.com/hk-eco-web-app:v1.0.0



