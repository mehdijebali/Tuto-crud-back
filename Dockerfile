FROM maven:3-openjdk-8

WORKDIR /opt/project

# ---- Build stage ----
COPY src ./src
COPY pom.xml .
COPY mvnw .
COPY mvnw.cmd .

# ---- Run stage ----
FROM openjdk:8-oracle
COPY target ./target
EXPOSE 8080

CMD ["mvn","package","java","-jar","./target/*.jar"]
