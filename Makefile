up:
	cd laradock && docker-compose up -d nginx php-fpm workspace mysql

down:
	cd laradock && docker-compose down

build:
	cd laradock && docker-compose up --build -d nginx php-fpm workspace mysql

workspace-bash:
	cd laradock && docker-compose exec workspace /bin/bash
wb: workspace-bash

mysql-bash:
	cd laradock && docker-compose exec mysql /bin/bash
mb: mysql-bash

services:
	./scripts/services.sh

install:
	./scripts/install.sh

nginx-recreate:
	cd laradock && docker-compose up -d --force-recreate nginx
nr: nginx-recreate
