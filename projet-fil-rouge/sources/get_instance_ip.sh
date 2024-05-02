#!bin/bash
export instance_ip=$(curl https://checkip.amazonaws.com)
cd data 
version=$(awk 'NR==3 {print $2}' releases.txt) docker-compose up -d --build 
docker ps -a
