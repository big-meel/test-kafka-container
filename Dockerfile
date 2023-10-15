FROM ubuntu:22.04
RUN apt-get update && apt-get install -y openjdk-8-jdk curl
RUN curl https://dlcdn.apache.org/kafka/3.6.0/kafka_2.13-3.6.0.tgz -o kafka
RUN tar -xzf kafka 
WORKDIR kafka_2.13-3.6.0/

# Start the ZooKeeper service
CMD bin/zookeeper-server-start.sh config/zookeeper.properties

EXPOSE 9092

# Add to a docker compose broker service
# Start the Kafka broker service
# CMD bin/kafka-server-start.sh config/server.properties

# RUN bin/kafka-topics.sh --create --topic quickstart-events --bootstrap-server localhost:9092



# WORKDIR /app

# COPY ./HelloWorld.java ./
# RUN javac HelloWorld.java