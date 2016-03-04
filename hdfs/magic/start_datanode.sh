#!/usr/bin/env sh

PROJECT_HOME="$(cd "$(dirname "$0")"/..; pwd)"

. $PROJECT_HOME/magic/set-env.sh

docker run -d \
        --net=host \
        -e MASTER=$MASTER \
        $IMAGE \ 
        hdfs datanode
