#!/usr/bin/env bash
#Created by fred-pc on 12/5/15.
export APACHE_LOG_DIR='/var/log/apache2'
export APACHE_DIR='/etc/apache2'

#udpate
apt-get update

apt-get -y install apache2 apache2-mpm-prefork apache2-prefork-dev apache2-utils apache2.2-common

INSTALL_SUCCESS=$?

#enabling mod_rewrite friendly url
a2enmod rewrite > /dev/null 2>&1

#remove 000-default
rm -rf $APACHE_DIR/sites-enabled

#remove apache2.conf
rm -rf $APACHE_DIR/apache2.conf

#copy modifications to install dir
cp -R /tmp/sites-enabled/ $APACHE_DIR/
cp -R /tmp/apache2.conf $APACHE_DIR/

#delete folder created on installation /var/www/html
if [ -d '/var/www/html' ]; then
    rm -rf /var/www/html/
fi

#verify if installed with success
if [ ! $INSTALL_SUCCESS -eq 0 ]; then
    echo "\n... Erro na instalação ...\n "
else
    echo -e "\n... Restarting Apache ...\n"
fi
