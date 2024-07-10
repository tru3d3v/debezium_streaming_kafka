#ARG DEBEZIUM_VERSION
FROM quay.io/debezium/connect:2.3
#FROM quay.io/debezium/connect:2.5.0.Alpha2

# These should point to the driver version to be used
ENV MAVEN_DEP_DESTINATION=$KAFKA_HOME/libs \
    ORACLE_JDBC_REPO="com/oracle/database/jdbc" \
    ORACLE_JDBC_GROUP="ojdbc8" \
    ORACLE_JDBC_VERSION="21.6.0.0" \
    ORACLE_JDBC_MD5="312e6f4ec9932bbf74a4461669970c4b" 
    #AVRO_CONV_REPO="io/confluent/kafka-connect-avro-converter" \
    #AVRO_CONV_GROUP="io.confluent" \
    #AVRO_CONV_VERSION="5.5.1" \
    #AVRO_CONV_MD5="9c1846872e6706166b7f2d7ae3922d3e" 

#RUN  curl -H "Accept: application/zip" https://repo1.maven.org/maven2/io/apicurio/apicurio-registry-distro-connect-converter/2.4.2.Final/apicurio-registry-distro-connect-converter-2.4.2.Final.tar.gz -o apicurio-registry-distro-connect-converter.tar.gz \
RUN  curl -H "Accept: application/zip" https://repo1.maven.org/maven2/io/apicurio/apicurio-registry-distro-connect-converter/3.0.0.M1/apicurio-registry-distro-connect-converter-3.0.0.M1.tar.gz -o apicurio-registry-distro-connect-converter.tar.gz \
  && tar -x -f apicurio-registry-distro-connect-converter.tar.gz -C $KAFKA_HOME/libs/ \
  && rm -f apicurio-registry-distro-connect-converter.tar.gz 

#RUN cd $KAFKA_HOME/connect && mkdir confluentinc-kafka-connect-avro-converter
RUN  curl -H "Accept: application/zip" https://d1i4a15mxbxib1.cloudfront.net/api/plugins/confluentinc/kafka-connect-avro-converter/versions/6.0.4/confluentinc-kafka-connect-avro-converter-6.0.4.zip -o confluentinc-kafka-connect-avro-converter-6.0.4.zip \
 && unzip confluentinc-kafka-connect-avro-converter-6.0.4.zip -d $KAFKA_HOME/connect/ \
   && rm confluentinc-kafka-connect-avro-converter-6.0.4.zip


RUN  curl -H "Accept: application/zip" https://repo1.maven.org/maven2/org/mongodb/kafka/mongo-kafka-connect/1.11.0/mongo-kafka-connect-1.11.0-all.jar -o $KAFKA_HOME/libs/mongo-kafka-connect-1.11.0-all.jar


#RUN cd $KAFKA_HOME/connect && mkdir plugin
#RUN  curl -H "Accept: application/zip" https://github.com/oryanmoshe/debezium-timestamp-converter/releases/download/v1.2.4/TimestampConverter-1.2.4-SNAPSHOT.jar -o $KAFKA_HOME/libs/TimestampConverter-1.2.4-SNAPSHOT.jar
#RUN cd $KAFKA_HOME/connect && mkdir github
#RUN  curl -H "Accept: application/zip" https://github.com/tru3d3v/debezium-timestamp-converter/raw/master/release/original-TimestampConverter2-1.2.3-SNAPSHOT.jar -o $KAFKA_HOME/connect/github/TimestampConverter-1.2.3-small-SNAPSHOT.jar
#RUN cp $KAFKA_HOME/connect/github/TimestampConverter2-1.2.3-small-SNAPSHOT.jar $KAFKA_HOME/connect/TimestampConverter2-1.2.3-small-SNAPSHOT.jar
#RUN cp $KAFKA_HOME/connect/github/TimestampConverter2-1.2.3-small-SNAPSHOT.jar $KAFKA_HOME/libs/TimestampConverter2-1.2.3-small-SNAPSHOT.jar
#RUN cp $KAFKA_HOME/connect/TimestampConverter-1.2.3-SNAPSHOT.jar $KAFKA_HOME/connect/debezium-connector-jdbc
#RUN cp $KAFKA_HOME/connect/TimestampConverter-1.2.3-SNAPSHOT.jar $KAFKA_HOME/connect/debezium-connector-oracle
#RUN cp $KAFKA_HOME/connect/TimestampConverter-1.2.3-SNAPSHOT.jar $KAFKA_HOME/connect/debezium-connector-db2
#RUN cp $KAFKA_HOME/connect/TimestampConverter-1.2.3-SNAPSHOT.jar $KAFKA_HOME/connect/plugin
#RUN cp $KAFKA_HOME/connect/TimestampConverter-1.2.3-SNAPSHOT.jar $KAFKA_HOME/libs

#COPY --chown=185 connector/*.json /deployments/

#RUN  curl -H "Accept: application/zip" https://github.com/oryanmoshe/debezium-timestamp-converter/releases/download/v1.2.4/TimestampConverter-1.2.4-SNAPSHOT.jar -o $KAFKA_CONNECT_PLUGINS_DIR/kafka-connect-jdbc/TimestampConverter-1.2.4-SNAPSHOT.jar

#COPY --chown=185 /plugin/kafka-connect-avro-converter-7.4.0.jar $KAFKA_HOME/libs/

RUN docker-maven-download central "$ORACLE_JDBC_REPO" "$ORACLE_JDBC_GROUP" "$ORACLE_JDBC_VERSION" "$ORACLE_JDBC_MD5"


USER kafka

