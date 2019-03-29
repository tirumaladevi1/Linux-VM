#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 -y
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server
sudo mysql -h127.0.0.1 -P3306 -uroot -e"UPDATE mysql.user SET password = MYSQL_ROOT_PASSWORD="root" WHERE user = 'root'"
sudo apt-get -y install apache2 mysql-server php5-mysql php5 libapache2-mod-php5 php5-mcrypt
sudo echo -e "<?php\nphpinfo();\n?>" >> /var/www/html/info.php
sudo service apache2 restart
