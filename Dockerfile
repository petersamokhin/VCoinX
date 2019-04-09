FROM node:8-alpine

MAINTAINER PeterSamokhin https://github.com/petersamokhin

RUN apk update && apk upgrade && apk add --no-cache bash git openssh

ENV APPLICATION_USER vcoinx
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN adduser -D -g '' $APPLICATION_USER

RUN mkdir /app
RUN chown -R $APPLICATION_USER /app
RUN chown -R $APPLICATION_USER /home/node

USER $APPLICATION_USER

COPY . /app
WORKDIR /app

RUN npm install --unsafe-perm=true

CMD ["npm", "run", "start"]