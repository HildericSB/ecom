FROM php:7.4-apache


WORKDIR /var/www/html/
COPY . ./

RUN docker-php-ext-install mysqli

ENV DB_HOST="db"
ENV DB_NAME="ecomdb"
ENV DB_USER="ecomuser"
ENV DB_PASSWORD="ecompassword"

EXPOSE 80

CMD ["apache2-foreground"]
