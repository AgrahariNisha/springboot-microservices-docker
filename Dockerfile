# Use OpenJDK 17 as the base image
FROM openjdk:17-jdk-alpine

# Create a temporary directory
VOLUME /tmp

# Copy the built JAR from target folder into the image
COPY target/demo-microservice-1.0.0.jar app.jar

# Run the JAR file when container starts
ENTRYPOINT ["java","-jar","/app.jar"]

# Expose port 8081 (same as your Spring Boot server port)
EXPOSE 8081
