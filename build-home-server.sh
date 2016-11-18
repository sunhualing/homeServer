#!/bin/sh

set -eux

if [ "$1" = "home" ]; then
    #sources.list
    sed -i '/^RUN apt-get update/i\ADD home-sources.list /etc/apt/sources.list' Dockerfile.nginx
    sed -i '/^RUN apt-get update/i\ADD home-sources.list /etc/apt/sources.list' Dockerfile.fpm
    sed -i '/^RUN apt-get update/i\ADD home-sources.list /etc/apt/sources.list' Dockerfile.piwigo
elif [ "$1" = "office" ]; then
    #source.list
    sed -i '/^RUN apt-get update/i\ADD office-sources.list /etc/apt/sources.list' Dockerfile.nginx
    sed -i '/^RUN apt-get update/i\ADD office-sources.list /etc/apt/sources.list' Dockerfile.fpm
    sed -i '/^RUN apt-get update/i\ADD office-sources.list /etc/apt/sources.list' Dockerfile.piwigo
    #proxy
    sed -i '/^RUN apt-get update/r proxy.conf' Dockerfile.nginx
    sed -i '/^RUN apt-get update/r proxy.conf' Dockerfile.fpm
    sed -i '/^RUN apt-get update/r proxy.conf' Dockerfile.piwigo
else
    echo "not support !"
fi

#sudo docker-compose up -d
