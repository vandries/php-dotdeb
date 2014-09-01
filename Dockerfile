#
# PHP-Dotdeb Dockerfile
#

FROM debian:wheezy
MAINTAINER Valentin Andries <valentin.andries@gmail.com>

# Install utils
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install wget curl

# Configure Dotdeb sources
RUN \
  wget -O - http://www.dotdeb.org/dotdeb.gpg | apt-key add - && \
  echo "deb http://packages.dotdeb.org wheezy-php55 all" > /etc/apt/sources.list.d/dotdeb.list && \
  echo "\ndeb-src http://packages.dotdeb.org wheezy-php55 all" >> /etc/apt/sources.list.d/dotdeb.list && \
  apt-get update

# Install PHP
RUN \
  DEBIAN_FRONTEND=noninteractive apt-get -y install php5