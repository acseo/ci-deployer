ARG         PHP_VERSION=8.2

FROM        php:${PHP_VERSION}-alpine

ARG         PHP_VERSION

LABEL       maintainer="ACSEO <contact@acseo.fr>"

# hadolint ignore=DL3018
RUN         apk --no-cache add openssh-client rsync

ENV         COMPOSER_HOME=/var/composer
ENV         PATH=${COMPOSER_HOME}/vendor/bin:$PATH
COPY        --from=composer:2 /usr/bin/composer /usr/bin/composer

ARG         DEPLOYER_VERSION=7.3
RUN         composer global require deployer/deployer:${DEPLOYER_VERSION} --dev

ENTRYPOINT  ["/bin/sh", "-c"]
