FROM maven:3-openjdk-8

WORKDIR /opt/project

# ---- Dependencies ----
COPY src ./src
COPY pom.xml .

# ---- Build ----
RUN mvn clean
CMD ["mvn", "clean", "install"]