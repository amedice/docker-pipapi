#docker build -t amedice/pipapi .
#docker run -it -d --name pipapi-test amedice/pipapi
#docker exec -it pipapi-test /bin/bash
#docker rm -f pipapi-test

FROM node:4.8.1
MAINTAINER Alex S. Médice <alex.medice@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/

RUN npm install && npm cache clean
COPY app.js /usr/src/app/

EXPOSE 3000

CMD [ "npm", "start" ]