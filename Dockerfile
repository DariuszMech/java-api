FROM maven:latest
WORKDIR /code
COPY . /code
RUN mvn clean install -DskipTests=true
EXPOSE 8080
CMD ["java","-jar", "/code/target/JavaWebService-1.0-SNAPSHOT.jar", "server", "/code/config.yml"]
 
ARG DB_HOST
ENV DB_HOST ${DB_HOST}
