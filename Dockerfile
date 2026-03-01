# Java 17 base image
FROM eclipse-temurin:17-jdk-alpine

# App folder inside container
WORKDIR /app

# Copy project files
COPY . .

# Build application
RUN ./mvnw clean package -DskipTests

# Expose port
EXPOSE 8080

# Run jar file
CMD ["sh", "-c", "java -jar target/*.jar"]
