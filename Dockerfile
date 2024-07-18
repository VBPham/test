FROM frankframework/frankframework:latest

COPY --chown=tomcat configurations /opt/frank/configurations/
COPY --chown=tomcat resources /opt/frank/resources/