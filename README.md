# mesos-slave
It is mesos slave command image


### run container

- `docker run -d --name=mesos_slave --net=host --privileged  -v /sys:/sys  -v /usr/bin/docker:/usr/bin/docker:ro  -v /var/run/docker.sock:/var/run/docker.sock -v /lib64/libdevmapper.so.1.02:/lib/libdevmapper.so.1.02:ro  duffqiu/mesos-slave  --containerizers=docker --work_dir=/var/lib/mesos/slave --master=zk://<mesos_ip>:2181/mesos`

- note: now the current version mesos slave will crash with this way. if need, you can try my mesos-slave-dind instead
