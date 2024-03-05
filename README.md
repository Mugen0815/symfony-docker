# Docker-Symfony
[Source code](https://github.com/Mugen0815/symfony-docker)

[Dockerhub](https://hub.docker.com/r/mugen0815/symfony-docker)

![build image](https://github.com/Mugen0815/symfony-docker/actions/workflows/docker-image.yml/badge.svg)

![Docker Image Version (latest by date)](https://img.shields.io/docker/v/mugen0815/symfony-docker)  
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/mugen0815/symfony-docker)  
![Docker Pulls](https://img.shields.io/docker/pulls/mugen0815/symfony-docker)  


Minimalistic Docker environment for symfony 6(https://symfony.com/) 
based on official php-apache-image (https://hub.docker.com/_/php/tags?name=apache)
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


## What it does
On startup, creates a symfony 6.4 webapp (configurabale via env-var) using symfony-cli
or calls 'composer install' if app already exists and vendor-folder is missing (for existing projects from git)


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
3. docker build . --no-cache
