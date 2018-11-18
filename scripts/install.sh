#!/usr/bin/env bash

ENVIRONMENT_ROOT=$(pwd);

file=".env"
if [ ! -f "$file" ]
then
    echo "$file not found. Please, create .env file to proceed the operation."
else
    cd laradock && docker-compose down

    cd ${ENVIRONMENT_ROOT}

    rm -rf laradock

    git clone -b v7.7.0 https://github.com/Laradock/laradock.git laradock

    cp .env laradock
fi
