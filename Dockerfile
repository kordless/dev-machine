FROM debian:jessie
MAINTAINER Eike Herzbach <eike@giantswarm.io>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install wget && \
    wget -qO - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add - && \
    echo 'deb http://packages.elasticsearch.org/logstashforwarder/debian stable main' \
      > /etc/apt/sources.list.d/logstashforwarder.list && \
    apt-get update -y && \
    apt-get install -y logstash-forwarder && \
    apt-get autoremove -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /etc/pki/tls/certs

ADD logstash-forwarder.crt /etc/pki/tls/certs/logstash-forwarder.crt
ADD logstash-forwarder.conf /etc/logstash-forwarder.conf
ADD run.sh /run.sh

ENV LOGSTASH_ADDR __UNSET__

CMD ["/bin/bash", "/run.sh"]
