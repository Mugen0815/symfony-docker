# Docker-Symfony
[Source code](https://github.com/Mugen0815/symfony-docker)

Minimalistic Docker environment for symfony 6(https://symfony.com/) 
based on official php-apache docker-hub-library (https://hub.docker.com/_/php/tags?name=apache)
including:
* Composer
* Symfony-CLI
* preinstalled Symfony-Webapp

with optional components via docker-compose:
* MariaDB
* Reverse-Proxy-Config for Traefik


## Requirements
* Linux or WSL2
* Docker version 18.06 or later
* (optional) Traefik 2


## Components
* Apache 2.4
* PHP 8.2
* Composer 2.6
* Symfony-CLI
* Symfony 6 Webapp
* (optional) MariaDB 10.6


## Setting up LOCAL environment
1. git clone git@github.com:Mugen0815/symfony-docker.git
2. cd symfony-docker
3. docker compose up -d
4. Go to http://localhost:8080


## Setting up EXTERNAL environment with traefik
1. git clone git@github.com:Mugen0815/symfony-docker.git
2. cd symfony-docker
3. edit .env to set ur custom traefik-settings
4. docker compose --file docker-compose-traefik.yml up -d
5. Go to https://symfony.yourdomain.com


## Building the image only
1. git clone git@github.com:Mugen0815/symfony-docker.git
2. cd symfony-docker
3. docker build .
