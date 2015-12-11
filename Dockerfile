FROM node@4.2.3
MAINTAINER Filipe Oliveira <contato@fmoliveira.com.br>

ADD . /var/src/

RUN npm install --prefix /var/src/

ENV NODE_ENV production
ENV MONGOLAB_CONNECTION mongodb://$DB_PORT_27017_TCP_ADDR:$DB_PORT_27017_TCP_PORT/mobyourlife

ENTRYPOINT [ "node", "/var/src/index.js" ]
