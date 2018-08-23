FROM mrbits/docker-php-5.3-apache
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.0.5"

RUN apt-get update && apt-get -y install libssl1.0.0 mysql-client

WORKDIR /var/www/html
RUN wget https://github.com/yiisoft/yii/archive/1.1.16.tar.gz
RUN tar xvfz 1.1.16.tar.gz && mv yii-1.1.16 yii && rm -f 1.1.16.tar.gz

RUN a2enmod rewrite
RUN a2enmod headers

