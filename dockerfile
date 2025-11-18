# Etapa de build: Maven + Java 21
FROM maven:3.9.4-eclipse-temurin-21 AS build  
# Versão “3.9.4‑eclipse‑temurin‑21” confirmada no Docker Hub :contentReference[oaicite:0]{index=0}  

WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

# Etapa final: runtime leve com Java 21
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

# Define a porta dinâmica do Render
ENV PORT 10000

ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "app.jar"]
