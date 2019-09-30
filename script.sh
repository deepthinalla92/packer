#!/bin/bash
set +x
sudo yum update -y
sudo yum install httpd -y
sudo service httpd start
sudo chkconfig httpd on
sudo chmod 777 /var/www/html
sudo echo "<html><body>Hello Ec2. I am your creator.</body></html>" > /var/www/html/index.html
cat /var/www/html/index.html

