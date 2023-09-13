FROM node:20-alpine

RUN mkdir -p /var/www/html/app/node_modules

WORKDIR /var/www/html/rewatch/api

COPY package*.json ./

RUN npm install

EXPOSE 3002

CMD [ "node", "app.js" ]
