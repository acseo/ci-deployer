FROM composer/composer:1.1-alpine

LABEL maintainer "nicolas.potier@acseo.fr"

RUN composer global require --dev deployer/deployer:~4.0.0 deployer/recipes:~4.0.0 codeception/codeception:~2.2.0
RUN apk --no-cache add openssh-client rsync

ENTRYPOINT ["/bin/sh", "-c"]
