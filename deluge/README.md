Deluge docker container
=======================

Docker container for running deluge over an openvpn connection.

Openvpn reads configuration from /etc/openvpn/clientconf.ovpn, and expects a
script called down.sh to lock all outgoing communication before a connection
is established.

Deluge reads configuration from /data and doesn't expect any files present on
first run. Don't forget to allow remote connections in the config.

Building
--------
```
docker build --rm -t mattiaslundberg/deluge .
```

Running
-------
NOTE: Adding NET-ADMIN is generally considered unsafe but is needed for openvpn.
```
docker run -d --cap-add=NET-ADMIN -v /path/to/openvpn/config:/etc/openvpn \\
		-v /path/to/deluge/config:/data --name=deluge mattiaslundberg/deluge
```
