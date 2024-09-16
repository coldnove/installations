#!bin/bash

sudo apt update -y
sudo apt install nginx -y
sudo ufw allow "Nginx HTTP"
cd /var/www/html
sudo touch index.html 
echo "<h1> ec2 name : $(hostname -f) <h1> | sudo tee /var/www/html/index.html
