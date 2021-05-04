FROM openjdk:11-slim-buster

WORKDIR /application

ENV DOCKERIZE_VERSION v0.6.1

RUN apt-get update && apt-get install -y wget && \
    wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz && \
    rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

COPY desafio-0.1-all.jar .

EXPOSE 8080

CMD [ "java", "-jar", "/application/desafio-0.1-all.jar" ]