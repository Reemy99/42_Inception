#!/usr/bin/env bash

# We are outputing some stuff to the file 
echo >> $DB_CONF_ROUTE
echo "[mysqld]" >> $DB_CONF_ROUTE
# accept all connections
echo "bind-address=0.0.0.0" >> $DB_CONF_ROUTE

# installing the database mysql
mysql_install_db --datadir=$DB_INSTALL

# health check for installation
mysqld_safe &
mysql_pid=$!

# Checks if the mysql server is up and running
until mysqladmin ping >/dev/null 2>&1; do
  echo -n "."; sleep 0.2
done

# configure database
mysql -u root -e "CREATE DATABASE $DB_NAME;
    ALTER USER 'root'@'localhost' IDENTIFIED BY '$DB_ROOT_PASS';
    GRANT ALL ON $DB_NAME.* TO '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
    FLUSH PRIVILEGES;"

wait $mysql_pid