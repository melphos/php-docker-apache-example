FROM php:7.0-apache

RUN apt-get update && \
    docker-php-ext-configure mysqli && \
    docker-php-ext-install mysqli && \
    apt-get clean

COPY myapp /var/www/html/
