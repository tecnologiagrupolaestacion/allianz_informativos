sudo apt-get update
sudo apt-get install apache2
sudo apt-get install php
sudo apt-get install php7.0-mcrypt
sudo apt-get install git
sudo a2enmod rewrite
sudo apt-get install php7.0-pgsql
sudo apt-get install php7.0-mysqli
sudo nano /etc/apache2/apache2.conf
#All
sudo service apache2 restart
sudo nano  /etc/apache2/sites-available/000-default.conf
<VirtualHost *:80>
        ServerName doc-star.linkdigital.co       
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/DocStar/public
        ErrorLog ${APACHE_LOG_DIR}/DocStar/error.log
        CustomLog ${APACHE_LOG_DIR}/DocStar/access.log combined
</VirtualHost>

<VirtualHost *:80>
        ServerName incentive.linkpruebas.com
        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html/incentive
        ErrorLog ${APACHE_LOG_DIR}/incentive/error.log
        CustomLog ${APACHE_LOG_DIR}/incentive/access.log combined
</VirtualHost>
sudo mkdir /var/log/apache2/DocStar
sudo chmod -R 777 /var/log/apache2/DocStar
sudo service apache2 restart
sudo nano /etc/php/7.0/apache2/php.ini

#composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer


