FROM maven:3-openjdk-8

WORKDIR /opt/project

# ---- Dependencies ----
COPY src ./src
COPY pom.xml .
COPY mvnw .
COPY mvnw.cmd .
COPY target ./target

# ---- Build ----
#RUN mvn package

EXPOSE 8080

CMD ["mvn", "clean","package","java","-jar","**/*.jar"]
