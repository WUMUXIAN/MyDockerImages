# Use latest aerogear/wildfly image as the base
FROM wumuxian/wildfly:latest
MAINTAINER WU MUXIAN <wumuxian1988@gmail.com>

# Download Aerogear distribution
ENV UPSVER=1.2.0-alpha.1
ENV UPSDIST=/opt/aerogear-unifiedpush-server-$UPSVER

RUN curl -L -o /opt/aerogear-unifiedpush-server-$UPSVER-dist.tar.gz https://github.com/aerogear/aerogear-unifiedpush-server/releases/download/$UPSVER/aerogear-unifiedpush-server-$UPSVER-dist.tar.gz
WORKDIR /opt
RUN tar zxf aerogear-unifiedpush-server-$UPSVER-dist.tar.gz

# unzip migrator and copy liquibase.properties
WORKDIR $UPSDIST/migrator
RUN unzip ups-migrator-dist.zip
COPY liquibase.properties  $UPSDIST/migrator/ups-migrator/

# Run everything below as aerogear user
USER jboss

# Copy the index.html to set root url point to push server
WORKDIR /opt/jboss/wildfly/welcome-content
RUN mv index.html index.html.orig
COPY index.html index.html

# Switch to the working dir $JBOSS_HOME/standalone/deployments
WORKDIR /opt/jboss/wildfly/standalone/deployments

# Copy the files from local 
RUN   cp $UPSDIST/servers/unifiedpush-auth-server.war $JBOSS_HOME/standalone/deployments \
      && cp $UPSDIST/servers/unifiedpush-server-wildfly.war $JBOSS_HOME/standalone/deployments

COPY entrypoint.sh /opt/
ENTRYPOINT ["/opt/entrypoint.sh"]
