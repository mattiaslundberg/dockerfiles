Flexget docker container
========================

Docker container for running flexget with deluge as downloading plugin.

It reads its configuration from /var/lib/flexget. The instructions assumes a
deluge daemon running in a docker named deluge with the default port.

Building
--------
```
docker build --rm -t mattiaslundberg/flexget .
```

Running
-------
```
docker run -d -v /path/to/flexget/config:/var/lib/flexget \\
		--link deluge:deluge mattiaslundberg/flexget
```
