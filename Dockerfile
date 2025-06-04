FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    unzip git libicu-dev libzip-dev libonig-dev \
    && docker-php-ext-install intl pdo_mysql zip mbstring

COPY . /var/www/html
WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html

