#!/bin/bash

echo 'Building new content...'
rm -rf public
hugo

echo 'Moving new content'
rm -rf serve/public
mv public serve/public

echo 'Recreating docker container'
docker-compose -f serve/docker-compose.yml up --build -d
