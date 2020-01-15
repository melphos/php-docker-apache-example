FROM php:7.0-apache

RUN apt-get update && \
    docker-php-ext-configure mysql && \
    docker-php-ext-install && \
    apt-get clean

COPY myapp /var/www/html/
