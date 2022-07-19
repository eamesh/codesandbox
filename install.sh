#!/bin/bash

cd setup
docker build -t codesandbox/build .

cd ../ && rm -rf ./app && mkdir ./app
docker run -it --rm -v app:/app codesandbox/build bash -c cd /workspace && cp -rf ./www/static/* ./packages/app/www/static && cp -rf /workspace /app

docker-compose up -d
