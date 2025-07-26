# Imagen base de Maven para compilar
FROM maven:3.9.4-eclipse-temurin-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Imagen base de Java para ejecutar
FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

# Puerto de tu app
EXPOSE 8080

# Comando para ejecutar
ENTRYPOINT ["java", "-jar", "app.jar"]
