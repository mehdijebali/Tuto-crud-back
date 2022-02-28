# ---- Build Stage ----
FROM maven:3-openjdk-8 AS build
RUN mkdir -p /workspace
WORKDIR /workspace
COPY pom.xml /workspace
COPY .env /workspace
COPY src /workspace/src
RUN mvn -f pom.xml clean package

# ---- Deploy stage ----
FROM openjdk:8-alpine
COPY --from=build /workspace/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]