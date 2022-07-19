FROM node:10.22.1-buster

RUN git clone https://github.com/codesandbox/codesandbox-client.git /workspace

WORKDIR /workspace

RUN yarn --registry https://registry.npm.taobao.org
RUN yarn build:deps
RUN cd packages/app && yarn run build:sandpack-sandbox
# RUN cp -rf ../../www/static/* ./www/static && cp -rf /workspace /build
