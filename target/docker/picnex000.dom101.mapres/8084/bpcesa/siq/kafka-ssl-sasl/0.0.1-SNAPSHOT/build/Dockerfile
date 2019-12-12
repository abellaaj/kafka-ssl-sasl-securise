FROM socle-bpceit-jdk:1.8.0-1
COPY maven /app/
RUN tar xzvf /app/kafka.tar.gz -C /app
RUN mv /app/kafka_2.12-2.3.1-SASL-SCRAM-SSL /app/kafka
RUN rm /app/kafka.tar.gz
RUN chmod -R 777 /app/kafka
RUN chmod 777 /app/kafka.sh
ENTRYPOINT ["/app/kafka.sh"]
