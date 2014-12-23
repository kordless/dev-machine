# Logstash Forwarder

This container runs on every CoreOS host and has the purpose to collect the host
logs in JSON format and transmit them to a central logstash instance.

## manual run command

`/usr/bin/journalctl -o json -f | docker run --rm -it --net=container:ls --name lsf lsf`
