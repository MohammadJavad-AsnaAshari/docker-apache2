FROM ubuntu
MAINTAINER MJ <mohammadjavadasnaashari@gmail.com>

# Skip promtps
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update; apt dist-upgrade -y

# Install packages
RUN apt install -y apache2 vim software-properties-common

# Install php 7.4
RUN add-apt-repository ppa:ondrej/php
RUN apt update; apt install -y php7.4

# Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
