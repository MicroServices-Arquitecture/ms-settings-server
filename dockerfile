# Usa una imagen de Java 17 ligera
FROM eclipse-temurin:17-jdk-alpine

# Crea un directorio para la app
WORKDIR /app

# Copia el archivo JAR
COPY target/config-server-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto (opcional, pero buena práctica)
EXPOSE 9000

# Comando para ejecutar el microservicio
ENTRYPOINT ["java", "-jar", "app.jar"]