# Use Maven image to build Java project
FROM maven:3.8.5-openjdk-17 AS build

# Set working directory
WORKDIR /app

# Copy source code
COPY . .

# Build Java app
RUN mvn clean package

# Final image
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy built jar from build stage
COPY --from=build /app/target/my-app-1.0-SNAPSHOT.jar app.jar

# Run the jar
CMD ["java", "-jar", "app.jar"]
