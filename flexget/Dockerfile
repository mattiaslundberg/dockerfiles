FROM ubuntu:14.04
MAINTAINER Mattias Lundberg <lundberg.mattias@gmail.com>

ENV LANG en_US.UTF-8
RUN locale-gen $LANG
RUN apt-get update && \
	apt-get install -y python-pip python-dev libffi-dev libssl-dev deluged
RUN pip install -I flexget twisted pyopenssl chardet service_identity

RUN mkdir -p /var/lib/flexget touch /var/lib/flexget/config.yml

VOLUME ["/var/lib/flexget"]

ENTRYPOINT ["/usr/local/bin/flexget", "--loglevel", "verbose", "-c", "/var/lib/flexget/config.yml"]

CMD ["daemon", "start"]
