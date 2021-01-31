echo "server {
	listen 80;
	listen [::]:80;
	listen 443 ssl;
	listen [::]:443 ssl;
	ssl_certificate /etc/ssl/d2435.pem;
	ssl_certificate_key /etc/ssl/d2435.key;
	root /var/www/localhost;
	index index.php index.html index.htm index.nginx-debian.html;
	server_name localhost www.localhost;
	location /{
		try_files \$uri \$uri/ =404;
		autoindex on;
	}
	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/run/php/php7.3-fpm.sock;
	}
}" > ../etc/nginx/sites-available/default
echo "server {
	listen 80;
	listen [::]:80;
	listen 443 ssl;
	listen [::]:443 ssl;
	ssl_certificate /etc/ssl/d2435.pem;
	ssl_certificate_key /etc/ssl/d2435.key;
	root /var/www/localhost;
	index index.php index.html index.htm index.nginx-debian.html;
	server_name localhost www.localhost;
	location /{
		try_files \$uri \$uri/ =404;
		autoindex on;
	}
	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/run/php/php7.3-fpm.sock;
	}
}" > ../etc/nginx/sites-enabled/default
service nginx restart