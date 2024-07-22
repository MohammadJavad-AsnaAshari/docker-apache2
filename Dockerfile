FROM ubuntu
MAINTAINER MJ <mohammadjavadasnaashari@gmail.com>

# Skip promtps
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update; apt dist-upgrade -y

# Install packages
RUN apt install -y apache2 vim

# Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
