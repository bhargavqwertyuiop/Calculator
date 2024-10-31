FROM openjdk:17-slim

# Install X11 libraries and font packages needed for AWT/Swing applications
RUN apt-get update && apt-get install -y \
    libxrender1 \
    libxtst6 \
    libxrandr2 \
    libxi6 \
    libxinerama1 \
    libgl1-mesa-glx \
    xvfb \
    fontconfig \
    fonts-dejavu \
    fonts-liberation \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the application JAR file into the container
COPY target/Calculator-1.0-SNAPSHOT.jar app.jar

# Start Xvfb and then run the application with the DISPLAY variable set
ENTRYPOINT ["sh", "-c", "Xvfb :99 -screen 0 1024x768x16 & DISPLAY=:99 java -Djava.awt.headless=false -jar app.jar"]