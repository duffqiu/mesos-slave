FROM duffqiu/mesos:latest
MAINTAINER duffqiu@gmail.com

RUN yum -y  update
RUN yum install -y wget

WORKDIR /var/lib/mesos/slave

ENV MESOS_NATIVE_LIBRARY=/usr/lib/libmesos.so MESOS_NATIVE_JAVA_LIBRARY=/usr/lib/libmesos.so

ENTRYPOINT ["mesos-slave"]

