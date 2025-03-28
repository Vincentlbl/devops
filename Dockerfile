# Utilise une image de base avec Java 21 (ici, Eclipse Temurin est utilisé)
FROM eclipse-temurin:21-jdk-alpine

# Argument pour spécifier le nom du JAR généré
ARG JAR_FILE=build/libs/demo-0.0.1-SNAPSHOT.jar

# Copie le JAR dans l'image Docker
COPY ${JAR_FILE} app.jar

# Expose le port 8080 (celui utilisé par Spring Boot)
EXPOSE 8080

# Commande pour démarrer l'application
ENTRYPOINT ["java", "-jar", "/app.jar"]
