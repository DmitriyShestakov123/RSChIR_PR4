FROM php:7.4.1-apache

RUN a2enmod rewrite

ADD ./api /var/www/html

RUN docker-php-ext-install mysqli &&\
    docker-php-ext-enable mysqli
