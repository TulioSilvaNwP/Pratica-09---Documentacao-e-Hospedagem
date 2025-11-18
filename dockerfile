# Etapa de build: Maven + Java 21
FROM maven:3.9.2-jdk-21 AS build

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia pom.xml e src
COPY pom.xml .
COPY src ./src

# Build do projeto e geração do .jar
RUN mvn clean package -DskipTests

# Etapa final: apenas Java para rodar a aplicação
FROM eclipse-temurin:21-jdk-jammy

WORKDIR /app

# Copia o .jar gerado na etapa de build
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar

# Porta usada pelo Render
ENV PORT 10000

# Comando de inicialização
ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "app.jar"]
