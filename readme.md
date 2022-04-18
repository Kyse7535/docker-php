# Installation

 apt-get install -y php-calendar
open your terminal , and enter :
1. `docker build -t myphp .`
2. `docker compose up -d`
3. `docker exec -it c_php bash`

in the open interactive terminal, enter:
1. `chmod -R 777 /etc/apache2`
2. `nano /etc/apache2/apache2.conf`
3. change the root file system /var/www/ to 
/var/www/html at <Directory /var/www>