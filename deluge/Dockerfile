FROM ubuntu:14.04
MAINTAINER Mattias Lundberg <lundberg.mattias@gmail.com>

ENV LANG en_US.UTF-8
RUN locale-gen $LANG
RUN apt-get update && \
	apt-get install -y openvpn deluged deluge-web && \
	apt-get clean

VOLUME ["/etc/openvpn"]
VOLUME ["/data"]

# Torrent port
EXPOSE 53160
EXPOSE 53160/udp
# WebUI
EXPOSE 8112
# Daemon
EXPOSE 58846

ADD ./start.sh /start.sh
CMD ["/start.sh"]
