FROM ubuntu:latest AS build

WORKDIR /app

RUN apt-get update && \
    apt-get install -y openjdk-21-jdk maven

COPY . .

RUN mvn clean install

FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

EXPOSE 8080

COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
