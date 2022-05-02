#getting the base image for vue
FROM node:lts-alpine as build-stage
WORKDIR /Document/
COPY package*.json ./
RUN npm install
LABEL  maintainer="nelsonomondi99@gmail.com"
COPY . .
RUN npm run build
