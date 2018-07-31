Docker With PHP 5.3 YII 1.1.16 Apache 2.4
=========================================

How to use
----------

Configure your Apache2 VHost in a conf.conf file

```
# Dockerfile
FROM mrbits/docker-php53-yii116:lastet

COPY conf.conf /etc/apache2/site-enabled/conf.conf

WORKDIR /var/www/html

COPY . /var/www/html
``` 

