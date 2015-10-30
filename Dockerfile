FROM manicmonkey/raspbian-jdk8
MAINTAINER James Baxter <j.w.baxter@gmail.com>

ENV WILDFLY_VERSION=9.0.2.Final
ENV WILDFLY_HOME=/opt/wildfly

RUN \
  wget http://download.jboss.org/wildfly/$WILDFLY_VERSION/wildfly-$WILDFLY_VERSION.tar.gz && \
  tar zxvf wildfly-$WILDFLY_VERSION.tar.gz && \
  ln -s /opt/wildfly-$WILDFLY_VERSION /opt/wildfly

CMD ["/opt/wildfly/bin/standalone.sh"]
