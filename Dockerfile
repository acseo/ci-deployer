FROM composer/composer:1.1-alpine

LABEL maintainer "nicolas.potier@acseo.fr"

RUN composer global require --dev deployer/deployer deployer/recipes codeception/codeception
RUN apk --no-cache add openssh-client rsync

ENTRYPOINT ["/bin/sh", "-c"]
