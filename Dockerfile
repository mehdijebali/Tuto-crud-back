FROM maven:3-openjdk-8

WORKDIR /opt/project

COPY src ./src
Copy pom.xml .

RUN mvn clean

CMD ["mvn", "clean", "install"]