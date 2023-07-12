FROM openjdk:8-jre-alpine

RUN apk update && apk add bash

WORKDIR /app

COPY /target/ddocker-jenkins-integration-sample.jar /app

EXPOSE 8080

CMD [ "java", "-jar", "docker-jenkins-integration-sample.jar" ]