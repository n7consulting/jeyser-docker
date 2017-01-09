Jeyser CRM - Docker
==============

This repository contains the Docker development environment used to make Jeyser CRM work.

Docker is a tool which allows us to virtualize our environment, producing containers with stack elements inside.

To learn more, go to the [Docker website](https://www.docker.com/).

## Requirements

- [docker](https://docs.docker.com/engine/installation/)
- [docker-compose](https://docs.docker.com/compose/install/)

## Install

First, clone the project :

```sh
git clone https://github.com/n7consulting/jeyser-docker.git
cd jeyser-docker
```

## Usage

To make the containers run, you can use the following commands :

```sh
docker-compose build
docker-compose up -d
```

The shortcut command for this is :

```sh
make install
```

To stop the containers, use ```docker-compose stop``` or ```make stop```.

To remove the containers (you would need to do it in case of strange problems or build new versions), use ```docker-compose rm``` or ```make rm```.

To see the containers status, use ```docker-compose ps``` or ```make status``` shortcut command.

### PhpMyAdmin

To access PhpMyAdmin, run your containers and then access to ```127.0.0.1:8080``` in your browser.

The root credentials are ```root:password``` ("password" is the password).

The other available user is ```incipio:password```.


### Applications

To install the project, run the following procedure :

```sh
cd volumes/apps
git clone https://@github.com/n7consulting/Incipio.git
composer install
#make directories writable
sudo chgrp -R www-data ./app ./var
sudo chmod -R g+w ./app ./var
```

You can access Jeyser with ```127.0.0.1``` in your browser.

### Tests

You can test your project with Behat. To do so, just type ```make test```

You can also use, according to the browser you want to test with

``` 
    docker-compose run behat --profile=<browser>
    docker-compose run behat --profile=firefox
    docker-compose run behat --profile=chrome
    docker-compose run behat --profile=phantomjs

```

