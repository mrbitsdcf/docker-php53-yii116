FROM eugeneware/php-5.3
LABEL "Maintainer"="MrBiTs"
LABEL "e-mail"="mrbits.dcf@gmail.com"
LABEL "version"="0.0.1"

WORKDIR /var/www/html
RUN wget https://github.com/yiisoft/yii/archive/1.1.16.tar.gz
RUN tar xvfz 1.1.16.tar.gz && mv yii-1.1.16 yii && rm -f 1.1.16.tar.gz

RUN a2enmod rewrite

