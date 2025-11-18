# Imagem base do Java 21
FROM eclipse-temurin:21-jdk-jammy

# Diretório de trabalho dentro do container
WORKDIR /app

# Copia o .jar gerado pelo Maven
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar 

# Define a porta que o Render vai usar
ENV PORT 10000

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-Dserver.port=$PORT", "-jar", "app.jar"]
