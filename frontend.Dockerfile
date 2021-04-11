FROM node:15.14

LABEL maintainer="cattchen<chen749923710@gmail.com>"

WORKDIR /usr/src/app

CMD yarn install --registry=https://registry.npm.taobao.org && yarn build && yarn start