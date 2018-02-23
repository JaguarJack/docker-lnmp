
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
     && docker-php-ext-install -j$(nproc) iconv mcrypt \
     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
     && docker-php-ext-install -j$(nproc) gd
 
 RUN pecl install redis-3.1.6 \
 	 && pecl install xdebug-2.5.0 \
 	 && pecl install memcached-3.0.4 \
 	 && pecl install swoole \
 	 && pecl install pcntl \
 	 && docker-php-ext-enable redis xdebug memcached swoole pcntl
    
 EXPOSE 9000
 CMD ["php-fpm"]