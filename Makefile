install: build up status

up:
		docker-compose up -d

stop:

		docker-compose stop

rm: stop
		docker-compose rm

build:

		docker-compose build

status:

		docker-compose ps

test:
		docker-compose run behat

root_cli:
		 docker exec -ti --user root jeyser_site /bin/bash

www-data_cli:
		 docker exec -ti --user www-data jeyser_site /bin/bash
