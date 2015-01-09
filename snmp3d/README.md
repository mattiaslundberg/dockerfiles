SNMPD for v3 docker container
=======================
Start a simple SNMPv3 trap receiver that prints received traps to stdout.

Authentication and validation is enabled.

Engine id: 80000001
User: myuser
Authentication: mypassord (MD5)
Privacy: myprivacy (DES)

Building
--------
```
docker build --rm -t mattiaslundberg/snmp3 .
```

Running
-------
```
docker run --net=host -it mattiaslundberg/snmp3
```
