# FROM node:4.2
FROM node:14-slim


WORKDIR /usr/src/app

RUN apt-get update 
RUN apt-get -y install wget
RUN apt-get -y install supervisor
COPY ./build/supervisord.conf /etc/supervisord.conf

ADD . /usr/src/app

# COPY . /src
# RUN cd /src && npm install
# RUN apt-get -y install supervisor
# COPY ./supervisord.conf /etc/supervisord.conf
EXPOSE 4000

# CMD ["node", "/usr/src/app/server.js"]

CMD ["/usr/bin/supervisord", "-n"]
