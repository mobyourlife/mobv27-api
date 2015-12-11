FROM node@4.2.3
MAINTAINER Filipe Oliveira <contato@fmoliveira.com.br>

ADD . /var/src/

RUN npm install --prefix /var/src/

ENV NODE_ENV production

EXPOSE 80

ENTRYPOINT [ "node", "/var/src/index.js" ]
