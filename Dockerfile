FROM openjdk:11-jdk
ADD target/gs-rest-service-0.1.0.jar gs-rest-service-0.1.0.jar
RUN ls
EXPOSE 8080
ENTRYPOINT ["java","-jar","gs-rest-service-0.1.0.jar"]
