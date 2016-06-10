# Use latest jboss/wildfly image as the base
FROM jboss/wildfly:9.0.0.Final
MAINTAINER MUXIAN WU <wumuxian1988@gmail.com>

# Run everything below as root user
USER root

# Clean the metadata
RUN yum install -y unzip wget && yum -q clean all

## MYSQL
ENV mysql_module_dir=$JBOSS_HOME/modules/com/mysql/jdbc/main/
RUN mkdir -p ${mysql_module_dir}
RUN wget -O mysql-connector-java-5.1.18.jar http://search.maven.org/remotecontent\?filepath\=mysql/mysql-connector-java/5.1.18/mysql-connector-java-5.1.18.jar
RUN mv mysql-connector-java-5.1.18.jar ${mysql_module_dir}
COPY mysql-module.xml ${mysql_module_dir}/module.xml

# Rename the original configuration file
RUN mv $JBOSS_HOME/standalone/configuration/standalone.xml $JBOSS_HOME/standalone/configuration/standalone.xml.orig

# WildFly configuration file ready for HTTP
ADD standalone-full.xml $JBOSS_HOME/standalone/configuration/standalone.xml

# Switch to the working dir /opt/jboss/wildfly
WORKDIR /opt/jboss/wildfly
