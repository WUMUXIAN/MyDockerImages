. VERSION
sed -e "s/HADOOP_VERSION hadoop-x.x.x/HADOOP_VERSION hadoop-${HADOOP_VERSION}/g" Dockerfile.template > Dockerfile
docker build -t wumuxian/${IMAGE}-${HADOOP_VERSION} .
docker tag -f wumuxian/${IMAGE}-${HADOOP_VERSION}:latest wumuxian/${IMAGE}-${HADOOP_VERSION}:$TAG
