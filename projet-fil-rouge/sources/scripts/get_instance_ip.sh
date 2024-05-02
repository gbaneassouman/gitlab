#!bin/bash
export instance_ip=$(cat 'data/infos_ec2.txt')
#export instance_ip=$(curl https://checkip.amazonaws.com)
docker-compose -f ./data/docker-compose.yml up -d --build 
docker images
docker ps
