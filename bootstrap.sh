#!/bin/bash

PUPPETPATH="/etc/puppetlabs"

git clone https://github.com/kaija/puppet-composer.git $PUPPETPATH

cd $PUPPETPATH

docker-compose up -d
