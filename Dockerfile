FROM openjdk:11-jdk
ADD target/gs-rest-service-0.1.0.jar gs-rest-service-0.1.0.jar
RUN ls
EXPOSE 8080
RUN apt-get update
RUN apt-get install iputils-ping
ENTRYPOINT ["ping","-d","riot.de"]
