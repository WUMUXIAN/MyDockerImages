#!/bin/bash

# To be consistent with marathon

if [ -n "$PORT0" ]; then
NAMENODE_HTTP_PORT=$PORT0
SECONDARYNAMENODE_HTTP_PORT=$PORT0
DATANODE_HTTP_PORT=$PORT0
fi

MASTER=${MASTER:-0.0.0.0}
sed -i 's;0.0.0.0;'$MASTER';g' $HADOOP_PREFIX/etc/hadoop/core-site.xml
sed -i 's;0.0.0.0:50070;0.0.0.0:'$NAMENODE_HTTP_PORT';g' $HADOOP_PREFIX/etc/hadoop/hdfs-site.xml
sed -i 's;0.0.0.0:50090;0.0.0.0:'$SECONDARYNAMENODE_HTTP_PORT';g' $HADOOP_PREFIX/etc/hadoop/hdfs-site.xml
sed -i 's;0.0.0.0:50075;0.0.0.0:'$DATANODE_HTTP_PORT';g' $HADOOP_PREFIX/etc/hadoop/hdfs-site.xml

exec "$@"
