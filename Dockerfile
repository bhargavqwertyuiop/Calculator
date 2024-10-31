# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application JAR file into the container
COPY target/app.jar /app/app.jar

# Expose the port that the app will run on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "/app/app.jar"]
