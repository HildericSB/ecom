FROM php:7.4-apache


WORKDIR /var/www/html/
COPY . ./

RUN docker-php-ext-install mysqli

ENV DB_HOST=mysql-service

EXPOSE 80

CMD ["apache2-foreground"]
