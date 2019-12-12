#!/usr/bin/env bash

cd /app/kafka/bin
./zookeeper-server-start.sh ../config/zookeeper.properties &
./kafka-configs.sh --zookeeper localhost:2181 --alter --add-config 'SCRAM-SHA-256=[password=admin-secret],SCRAM-SHA-512=[password=admin-secret]' --entity-type users --entity-name "admin" &
./kafka-server-start.sh ../config/server.properties
