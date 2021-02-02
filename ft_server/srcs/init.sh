apt-get update
apt-get install -y wget
apt-get install -y nginx
apt-get install -y openssl
apt-get install -y mariadb-server
apt-get install -y php-fpm
apt-get install -y php-mysql
apt-get install -y php-mbstring
mkdir ../var/www/localhost
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-english.tar.gz
tar -xf phpMyAdmin-5.0.4-english.tar.gz && rm -rf phpMyAdmin-5.0.4-english.tar.gz
mv phpMyAdmin-5.0.4-english ../var/www/localhost/phpmyadmin
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz && rm -rf latest.tar.gz
mv wordpress ../var/www/localhost/wordpress
openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out ../etc/ssl/d2435.pem -keyout ../etc/ssl/d2435.key -subj "/C=IT/ST=Rome/L=Rome/O=42RomaLuiss/OU=dmalori/CN=localhost"
mv ../d2435/wp-config.php ../var/www/localhost/wordpress
mv ../d2435/config.inc.php ../var/www/localhost/phpmyadmin
cp ../d2435/default ../etc/nginx/sites-available
mv ../d2435/default ../etc/nginx/sites-enabled
chown -R www-data:www-data ../var/www/localhost/*
chmod -R 755 ../var/www/localhost/*
service mysql start
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress.* TO 'root'@'localhost' IDENTIFIED BY 'root';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
service nginx start
service mysql stop
service mysql start
service php7.3-fpm start
bash ../d2435/autoindex_on.sh
tail -f /dev/null
