FROM node:20-alpine

WORKDIR /var/www/html/rewatch/api

ARG PNPM_VERSION=8.7.5
RUN npm --global install pnpm@${PNPM_VERSION}

RUN mkdir -p /var/www/html/app/node_modules

COPY package*.json ./
COPY pnpm*.json ./

RUN pnpm install

USER node

EXPOSE 3001

CMD [ "pnpm", "start:dev" ]