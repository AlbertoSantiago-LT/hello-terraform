#!/bin/bash
cd /home/ec2-user/
echo "Comandos de user_data" >> log.txt
sudo yum install -y httpd >>log.txt
sudo systemctl enable httpd >> log.txt
sudo systemctl start httpd >> log.txt
echo "Instalacion y sysmrtemctl" >> log.txt
rm -rf /var/www/html/* /home/ec2-user/*
#echo "Borrado" >> log.txt
wget https://github.com/AlbertoSantiago-LT/hello-2048/archive/refs/heads/main.zip
unzip main.zip
echo "wget" >> log.txt
mv /home/ec2-user/hello-2048-main/public_html/* /var/www/html/
echo "MV" >> log.txt
