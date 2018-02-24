 #get the image of php
 From php:7.2.2-fpm-alpine3.7

 MAINTAINER wuyanwen <wuyanwen1992@gmail.com>

 #Install php extensions by using docker-php-ext-install

 ENV PHP_VERSION 7.2.2

 RUN apt-get update && apt-get install -y \
	     libfreetype6-dev \
         libjpeg62-turbo-dev \
         libmcrypt-dev \
         libpng12-dev \
         libmagickwand-dev \
     && docker-php-ext-install -j$(nproc) iconv mcrypt \
     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
     && docker-php-ext-install -j$(nproc) gd
     && docker-php-ext-install pcntl
     && docker-php-ext-install sockets
     && docker-php-ext-install mbstring
     && docker-php-ext-install icovn
     && docker-php-ext-install pdo
     && docker-php-ext-install pdo_mysql
     && docker-php-ext-install mcrypt
     && docker-php-ext-install sysvmsg
     && docker-php-ext-install sysvsem
     && docker-php-ext-install sysvshm
     
 #Install php extensions by using pecl
 
 RUN pecl install redis-3.1.6 \
     && pecl install xdebug-2.6.0 \
     && pecl install memcached-3.0.4 \
     && pecl install swoole \
     && pecl install SeasLog \
     && pecl install yaf \
     && pecl install imagick-3.4.3
     && docker-php-ext-enable redis xdebug memcached swoole SeasLog yaf imagick
    
 EXPOSE 9000
 CMD ["php-fpm"]
