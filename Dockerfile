# Sử dụng image Kafka chính thức
FROM apache/kafka:latest

# Thiết lập biến môi trường cần thiết
ENV KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper:2181
ENV KAFKA_CFG_LISTENERS=PLAINTEXT://0.0.0.0:9092
ENV KAFKA_CFG_ADVERTISED_LISTENERS=PLAINTEXT://kafka-broker.onrender.com:9092
ENV KAFKA_CFG_OFFSETS_TOPIC_REPLICATION_FACTOR=1

# Expose cổng Kafka
EXPOSE 9092
