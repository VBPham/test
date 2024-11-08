FROM maven as builder

WORKDIR /usr/src/frank-config

COPY pom.xml .

RUN mvn dependency:go-offline

COPY src src

RUN mvn

FROM frankframework/frankframework:latest

COPY --chown=tomcat --from=builder /usr/src/frank-config/target/*.jar /opt/frank/resources/