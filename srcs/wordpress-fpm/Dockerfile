FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg-dev libxml2-dev zip unzip mariadb-client \
    && docker-php-ext-install mysql pdo pdo_mysql mbstring gd xml

WORKDIR /var/www/html

RUN curl -O https://wordpress.org/wordpress-6.7.2.tar.gz \
    && tar -xzf wordpress-6.7.2.tar.gz --strip-components=1 \
    && rm wordpress-6.7.2.tar.gz

RUN chown -R www-data:www-data /var/www/html

CMD [ "php-fpm" ]