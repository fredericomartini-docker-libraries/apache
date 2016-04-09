# apache
repository to manage docker apache versions

Modification file: <b>000-default.conf</b>:

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
    
