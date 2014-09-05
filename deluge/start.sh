#!/bin/bash

mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
	mknod /dev/net/tun c 10 200
fi

# TODO: Block connections before started connection
openvpn /etc/openvpn/clientconf.ovpn &

rm -f /data/deluged.pid
deluged -c /data -L info -l /data/deluged.log
deluge-web -c /data
