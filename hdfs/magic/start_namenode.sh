#!/usr/bin/env sh

PROJECT_HOME="$(cd "$(dirname "$0")"/..; pwd)"

. $PROJECT_HOME/magic/set-env.sh

docker run \
        --net=host \
        -e MASTER=$MASTER \
        -e NAMENODE_HTTP_PORT=$NAMENODE_HTTP_PORT \
        $IMAGE \
        hdfs namenode

