FROM adoptopenjdk/openjdk11
RUN apt-get update && apt-get install -y maven
WORKDIR /user/local/carina-demo
COPY src /user/local/carina-demo/src
COPY pom.xml /user/local/carina-demo/pom.xml
CMD mvn clean test -Dsuite=api