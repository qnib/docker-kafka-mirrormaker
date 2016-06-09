FROM qnib/kafka
ENV  ZOOKEEPER_CONNECT=zookeeper.service.consul:2181/kafka \
     KAFKA_MM_GROUPID=kafka-mirrormaker \
     KAFKA_MM_TOPIC_WHITELIST=test
ADD etc/consul-templates/kafka/mirrormaker/consumer_config.properties.ctmpl \
    etc/consul-templates/kafka/mirrormaker/producer_config.properties.ctmpl \
    /etc/consul-templates/kafka/mirrormaker/
ADD opt/qnib/kafka/mirrormaker/bin/start.sh \
   /opt/qnib/kafka/mirrormaker/bin/

