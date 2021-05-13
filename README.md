Scylla DB
=========

* https://www.scylladb.com/download/?platform=ubuntu-20.04&version=scylla-4.4#open-source


### ScyllaDB Commands
```
scylla_setup
systemctl start scylla-server
systemctl stop scylla-server

nodetool status
cqlsh
cassandra-stress write -mode cql3 native 
```

### ScyllaDB Developer Mode 
```
vi /etc/default/scylla-server
  SCYLLA_ARGS="--log-to-syslog 1 --log-to-stdout 0 --default-log-level info --network-stack posix --developer-mode 1"

```

### ScyllaDB Configuration
```
vi /etc/scylla/scylla.yaml
```

### ScyllaDB Installation
```
    scylla_setup --no-raid-setup --no-kernel-check --no-verify-package \
                 --no-coredump-setup --no-sysconfig-setup --io-setup 0 \
                 --no-node-exporter --no-cpuscaling-setup \
                 --no-fstrim-setup --no-rsyslog-setup

 scylla_setup --no-raid-setup --no-kernel-check --no-verify-package \
              --no-ntp-setup --no-coredump-setup --no-sysconfig-setup \
              --io-setup 0 --no-node-exporter --no-cpuscaling-setup \
              --no-fstrim-setup --no-rsyslog-setup
```


