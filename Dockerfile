FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

RUN openssl dhparam -out /home/sammy/node_project/dhparam/dhparam-2048.pem 2048

COPY . .
