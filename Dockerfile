FROM alpine:latest
RUN apk --no-cache update
RUN apk add --no-cache bash wget curl php7 php7-bcmath php7-ctype php7-curl php7-dom php7-fpm php7-gd php7-intl php7-mbstring php7-openssl php7-pdo php7-pdo_mysql php7-mysqlnd php7-mysqli php7-xml php7-soap php7-xsl php7-zip php7-json php7-iconv php7-pecl-redis php7-pecl-lzf php7-pecl-imagick php7-pecl-mcrypt
RUN wget "https://github.com/composer/composer/releases/download/1.8.4/composer.phar" -O "/usr/bin/composer"
RUN chmod 755 /usr/bin/composer
EXPOSE 9000
CMD ["php-fpm7", "-F"]