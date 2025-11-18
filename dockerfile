# Imagem do Maven + Java para build
FROM maven:3.9.2-eclipse-temurin-21 AS build

WORKDIR /app

# Copia o pom.xml e o código-fonte
COPY pom.xml .
COPY src ./src

# Build do projeto e geração do .jar
RUN mvn clean package -DskipTests

# Imagem final apenas com Java para rodar a aplicação
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copia o .jar da etapa de build
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

ENV PORT 10000

ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "app.jar"]
