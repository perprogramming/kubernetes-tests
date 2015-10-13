FROM ubuntu:15.10

RUN apt-get update && \
    apt-get install -y nginx php5-fpm

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled/myapp /etc/nginx/sites-enabled/myapp
RUN rm /etc/nginx/sites-enabled/default

COPY php-fpm.conf /etc/php5/fpm/php-fpm.conf

COPY test.php /app/test.php