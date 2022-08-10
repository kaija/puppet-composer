#!/bin/bash

PUPPETPATH="/etc/puppetlabs"

echo "sync puppet server basic config"
git clone https://github.com/kaija/puppet-composer.git $PUPPETPATH

cd $PUPPETPATH

echo "build puppet server container"

docker-compose build

echo "launch puppet server"

docker-compose up -d
