# dockerfile example
from openjdk:11-jre-slim

workdir /app
copy target/Calculator-1.0-SNAPSHOT.jar app.jar
expose 8080
entrypoint ["java", "-jar", "app.jar"]
