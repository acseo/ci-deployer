FROM composer:latest

LABEL maintainer "nicolas.potier@acseo.fr"

RUN composer global require --dev deployer/deployer:6.0.5
RUN apk --no-cache add openssh-client rsync

ENTRYPOINT ["/bin/sh", "-c"]
