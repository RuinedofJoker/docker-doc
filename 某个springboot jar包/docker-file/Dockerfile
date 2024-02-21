FROM java:8
ENV PATH /usr/bin/java:$PATH
WORKDIR /code
COPY . .
ENTRYPOINT ["java"]
CMD ["-jar", "kafka_ack-0.0.1-SNAPSHOT.jar"]