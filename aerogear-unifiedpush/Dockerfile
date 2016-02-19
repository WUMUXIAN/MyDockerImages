# Use latest aerogear/wildfly image as the base
FROM wumuxian/wildfly
MAINTAINER WU MUXIAN <wumuxian1988@gmail.com>

# Run everything below as aerogear user
USER jboss

# Switch to the working dir $JBOSS_HOME/standalone/deployments
WORKDIR /opt/jboss/wildfly/standalone/deployments

# Copy the files from local 
COPY auth-server.war auth-server.war
COPY ag-push.war ag-push.war

