FROM php:7.4-apache
RUN apt update && apt install tor -y && rm /var/lib/apt/cache
COPY . /var/www/html
RUN rm -rf /var/www/html/.git && mv /var/www/html/run.sh /
ENTRYPOINT ["/bin/bash","/run.sh"]
