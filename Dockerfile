FROM docker:git

MAINTAINER jn.germon@gmail.com

RUN apk update && \
    apk add \
        curl \
        curl-dev \
        nodejs-npm \
        php7 \
        php7-intl \
        php7-json \
        php7-mbstring \
        php7-openssl \
        php7-phar \
        php7-zlib \
    && rm -rf /var/cache/apk/*

# Install composer
RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer
