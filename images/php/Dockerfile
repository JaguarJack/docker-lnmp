 #get the image of php
 From php:7.2.2-fpm

 MAINTAINER wuyanwen <wuyanwen1992@gmail.com>

 #Install php extensions by using docker-php-ext-install
 #Extension List
 ########################################################
 #bcmath bz2 calendar ctype curl dba dom enchant exif 
 #fileinfo filter ftp gd gettext gmp hash iconv imap interbase 
 #intl json ldap mbstring mcrypt mysqli oci8 odbc opcache 
 #pcntl pdo pdo_dblib pdo_firebird pdo_mysql pdo_oci 
 #pdo_odbc pdo_pgsql pdo_sqlite pgsql phar posix pspell 
 #readline recode reflection session shmop simplexml 
 #snmp soap sockets spl standard sysvmsg sysvsem sysvshm
 #tidy tokenizer wddx xml xmlr
 ########################################################
 
 ENV PHP_VERSION 7.2.2

 
 RUN apt-get update \
     && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev \
     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
     && docker-php-ext-install gd \
     && apt-get install -y curl libcurl3 libcurl4-openssl-dev \
     && docker-php-ext-install curl \
     && docker-php-ext-install pcntl \
     && docker-php-ext-install sockets \
     && docker-php-ext-install mbstring \
     && docker-php-ext-install pdo \
     && docker-php-ext-install pdo_mysql \
     && docker-php-ext-install sysvmsg \
     && docker-php-ext-install sysvsem \
     && docker-php-ext-install sysvshm \
     && docker-php-ext-install mysqli
     
 #Install php extensions by using pecl
 
 RUN pecl install redis-3.1.6 \
     && pecl install xdebug-2.6.0 \
     && apt-get install -y libmemcached-dev zlib1g-dev \
     && pecl install memcached-3.0.4 \
     && pecl install swoole \
     && pecl install SeasLog \
     && pecl install yaf \
     && apt-get update && apt-get install -y libmagickwand-dev \
     && pecl install imagick-3.4.3 \
     && docker-php-ext-enable redis xdebug memcached swoole seaslog yaf imagick
 
 #install composer
 # Composer
 #RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer \ 
