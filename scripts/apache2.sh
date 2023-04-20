#!/bin/bash
sudo yum install httpd -y
echo "<h1> This is Public Subnet 02 </h1>" >/var/www/html/index.html
sudo chkconfig httpd on
sudo service httpd start