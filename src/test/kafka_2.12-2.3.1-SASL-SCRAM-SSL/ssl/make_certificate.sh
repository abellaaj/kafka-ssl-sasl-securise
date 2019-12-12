#!/bin/bash
#https://docs.confluent.io/current/security/security_tutorial.html#generating-keys-certs
VALIDIDY=360
STORE_PASS=password
CN="kafka-ssl-sasl"
ALIAS=kafka-ssl-sasl
set -x
keytool -keystore kafka.server.keystore.jks -deststoretype pkcs12 -alias ${ALIAS} \
	-validity ${VALIDIDY} -genkey -storepass ${STORE_PASS} -keypass ${STORE_PASS} \
	-dname "CN=${CN}" -ext SAN=DNS:$(hostname) -ext SAN=ip:0.0.0.0
