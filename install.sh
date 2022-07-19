#!/bin/bash

cd setup
docker build -t codesandbox/build .

cd ../ && rm -rf ./app
container_id="$(docker run -t -d codesandbox/build /bin/bash)"
docker cp $container_id:/workspace/ ./app
docker rm $container_id -f
# cp -rf ./app/www/static/* ./app/www/packages/app/www/static

docker-compose up -d
