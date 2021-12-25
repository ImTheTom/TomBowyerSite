#!/bin/bash

export HUGO_DIRECTORY="/home/tom/hugo"
echo $HUGO_DIRECTORY

echo 'Starting development server'
docker-compose -f "$HUGO_DIRECTORY/docker-compose.yml" down
docker-compose -f "$HUGO_DIRECTORY/docker-compose.yml" up --build -d

echo 'Site is available at http://192.168.0.25:1313/'