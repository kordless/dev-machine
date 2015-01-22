# Logstash Forwarder

This container runs on every CoreOS host and has the purpose to collect the host
logs in JSON format and transmit them to a central logstash instance.

## manual run command

`journalctl -fo json | docker run --rm -i -e LOGSTASH_ADDR=logstash.example.com:5000 registry.giantswarm.io/giantswarm/logstash-forwarder`
