FROM alpine/java:21-jdk

WORKDIR /challenge-java-developer

ARG JAR_FILE=target/challenge-java-developer-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} /app.jar

EXPOSE 5000

ENTRYPOINT ["java", "-jar", "/app.jar"]