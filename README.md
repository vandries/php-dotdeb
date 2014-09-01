php-dotdeb
==========

PHP Dockerfile for trusted automated Docker builds. Based on Debian and Dotdeb

## PHP-Dotdeb Dockerfile


This repository contains **Dockerfile** of [Dotdeb](http://http://www.dotdeb.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/vandries/php/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* debian:wheezy

(debian:squeezy for 5.3 tag)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/vandries/php/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull vandries/php`

   (alternatively, you can build an image from Dockerfile: `docker build -t="vandries/php" github.com/vandries/php`)


### Usage

    docker run -d vandries/php

By default vandries/php:latest install current version of Dotdeb PHP package. Actually PHP 5.4.32.


### Usage with specific version

Images with specific version of PHP are now available.

    docker run -d vandries/php:5.x

Supported versions :

- 5.3 : Debian sqeezy + PHP 5.3.29
- 5.4 : Debian wheezy + PHP 5.4.32
- 5.5 : Debian wheezy + PHP 5.5.16
- *5.6 : Not yet implemented*