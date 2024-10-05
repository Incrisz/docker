#!/bin/bash

# Update package information
apt update
apt install expect -y
apt install systemctl -y
# Install MySQL server
# apt install mysql-server -y
sudo apt-get install mariadb-server-10.3


chown mysql:mysql /etc/mysql/mysql.cnf
chown mysql:mysql /etc/mysql/my.cnf

# Secure MySQL installation using an expect script
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation

# Answer 'No' to set up VALIDATE PASSWORD component
expect \"Press y|Y for Yes, any other key for No:\"
send \"n\r\"

# Choose 'No' for remove anonymous users
expect \"Remove anonymous users? (Press y|Y for Yes, any other key for No) :\"
send \"n\r\"

# Choose 'No' for disallow remote root login
expect \"Disallow root login remotely? (Press y|Y for Yes, any other key for No) :\"
send \"n\r\"

# Choose 'No' for remove test database
expect \"Remove test database and access to it? (Press y|Y for Yes, any other key for No) :\"
send \"n\r\"

# Choose 'Yes' to reload privilege tables now
expect \"Reload privilege tables now? (Press y|Y for Yes, any other key for No) :\"
send \"y\r\"

expect eof
")

# systemctl start mysql

echo "$SECURE_MYSQL"
