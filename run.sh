#!/bin/bash
LS_CONFIG=/etc/logstash-forwarder.conf
sed -ie "s/%%LOGSTASH_ADDR%%/${LOGSTASH_ADDR}/g" $LS_CONFIG
exec /opt/logstash-forwarder/bin/logstash-forwarder.sh -config $LS_CONFIG
