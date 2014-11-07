SNMPD docker container
=======================
Start a simple SNMP trap receiver that prints received traps to stdout.

NOTE: No authentication is enabled.

Building
--------
```
docker build --rm -t mattiaslundberg/snmpd .
```

Running
-------
```
docker run --net=host -it mattiaslundberg/snmpd
```
