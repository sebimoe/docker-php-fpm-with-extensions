FROM php:fpm

RUN curl -sSLf \
        -o /usr/local/bin/install-php-extensions \
        https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions \
    && chmod +x /usr/local/bin/install-php-extensions \
    && install-php-extensions bcmath bz2 csv exif gd gnupg http imagick ldap lzf mysqli odbc \
          opcache pdo_mysql pdo_pgsql pgsql pkcs11 protobuf redis smbclient sockets \
          ssh2 timezonedb uploadprogress uuid xdebug yaml zip
