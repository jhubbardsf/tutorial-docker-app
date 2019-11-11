# Filename: Dockerfile 
FROM node:10-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN apk update
RUN apk upgrade
RUN apk add bash
EXPOSE 3000
CMD ["npm", "start"]
