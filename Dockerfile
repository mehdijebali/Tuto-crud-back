FROM maven:3-openjdk-8

WORKDIR /opt/project

# ---- Dependencies ----
COPY src ./src
Copy pom.xml .

# ---- Build ----
RUN mvn clean
CMD ["mvn", "clean", "install"]