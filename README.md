docker-db2
==========

Create New DB2 Instance and Start

```
docker run -it -v /opt --name db2-volume busybox /bin/sh
docker run --rm -it --name db2 --privileged --volumes-from db2-volume -p 50000:50000 db2
```

