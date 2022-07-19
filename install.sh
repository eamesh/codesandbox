#!/bin/bash

cd setup
docker build -t codesandbox-build .

cd ../
docker run -it --rm -v ./build:/build codesandbox-build bash -c cd /workspace && cp -rf ./www/static/* ./packages/app/www/static && cp -rf /workspace /build

docker-compose up -d
