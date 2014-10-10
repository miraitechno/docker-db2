FROM centos:centos6

MAINTAINER Miraitechno, Inc.

RUN yum -y install tar file libaio libstdc++.so.6 pam.i686 sudo

ADD v10.5_linuxx64_expc.tar.gz /usr/local/src
COPY config/db2response.rsp /root/db2response.rsp
COPY config/init.sh /root/init.sh

CMD /bin/sh /root/init.sh && tail -f /dev/null

EXPOSE 50000

