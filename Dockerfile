FROM maven:3-openjdk-8

WORKDIR /opt/project

# ---- Dependencies ----
COPY src ./src
COPY pom.xml .

# ---- Build ----
RUN mvn clean install

EXPOSE 8080
CMD ["mvn", "clean", "install"]
