FROM php:7.1-fpm

RUN apt-get update
RUN apt-get install -y libfreetype6-dev
RUN apt-get install -y curl
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install bcmath

COPY slim.conf  /usr/local/etc/

RUN usermod -u 1000 www-data

EXPOSE 9000
CMD ["php-fpm", "-F"]
