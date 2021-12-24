#!/bin/bash

export HUGO_DIRECTORY="/home/tom/hugo"
echo $HUGO_DIRECTORY

echo 'Building new content...'
rm -rf "$HUGO_DIRECTORY/public"
hugo

echo 'Moving new content'
rm -rf "$HUGO_DIRECTORY/production/public"
mv "$HUGO_DIRECTORY/public" "$HUGO_DIRECTORY/production/public"

echo 'Recreating docker container'
docker-compose -f "$HUGO_DIRECTORY/production/docker-compose.yml" up --build -d

echo 'Cleaning up'
rm -rf "$HUGO_DIRECTORY/.hugo_build.lock"