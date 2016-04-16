# Apache
### Repository to manage Dockerfiles of apache

#### - Running under: 
* debian 8.4

#### - Apache Version: 2.4

#### - Installed:

 - apache2 
 - apache2-mpm-prefork 
 - apache2-prefork-dev 
 - apache2-utils 
 - apache2.2-common


#### - Modification file: 000-default.conf

    <VirtualHost *:80>
        DocumentRoot /var/www/
    
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
    
        <Directory />
            Options Indexes FollowSymLinks
            AllowOverride All
            Require all granted
        </Directory>
    </VirtualHost>
