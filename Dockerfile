FROM openjdk:8-jdk-alpine

EXPOSE 8098

ARG JAR_FILE=target/gcp-deployment-tutorial-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} app.jar

ENTRYPOINT exec java -jar /app.jar