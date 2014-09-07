FROM ubuntu:14.04
MAINTAINER Mattias Lundberg <lundberg.mattias@gmail.com>

ENV LANG en_US.UTF-8
RUN locale-gen $LANG
RUN apt-get update && \
	apt-get install -y python-pip python-dev libffi-dev libssl-dev
RUN pip install -I flexget twisted pyopenssl

RUN mkdir -p /var/lib/flexget touch /var/lib/flexget/config.yml

VOLUME ["/var/lib/flexget"]

ENTRYPOINT ["/usr/local/bin/flexget", "--loglevel", "warning", "-c", "/var/lib/flexget/config.yml"]

CMD ["daemon", "start"]
