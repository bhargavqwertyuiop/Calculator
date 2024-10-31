# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/Calculator-1.0-SNAPSHOT.jar /app/Calculator-1.0-SNAPSHOT.jar

# Expose the port that the app will run on
EXPOSE 8085

# Run the application
CMD ["java", "-jar", "/app/Calculator-1.0-SNAPSHOT.jar"]
