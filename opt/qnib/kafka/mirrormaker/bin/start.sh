#!/usr/local/bin/dumb-init /bin/bash

consul-template -once -template "/etc/consul-templates/kafka/mirrormaker/consumer_config.properties.ctmpl:/opt/qnib/kafka/mirrormaker/etc/consumer_config.properties"
consul-template -once -template "/etc/consul-templates/kafka/mirrormaker/producer_config.properties.ctmpl:/opt/qnib/kafka/mirrormaker/etc/producer_config.properties"


