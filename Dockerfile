FROM eclipse-temurin:17-jdk-jammy
WORKDIR /jpetstore
RUN apt-get update && apt-get install -y iputils-ping
RUN apt update && apt install -y telnet
ENV TZ="Asia/Taipei"
COPY .mvn/ .mvn
ADD mvnw mvnw.cmd pom.xml format.xml renovate.json ./
COPY ./src ./src
RUN ./mvnw clean package
EXPOSE 8080
CMD ["./mvnw", "cargo:run", "-P", "tomcat90"]