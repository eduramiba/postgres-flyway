FROM postgres:11
LABEL maintainer "eduramiba@gmail.com"

ADD https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/5.2.0/flyway-commandline-5.2.0-linux-x64.tar.gz /flyway.tar.gz
RUN tar xvf /flyway.tar.gz
RUN mv flyway-5.2.0 flyway
RUN rm -rf /flyway.tar.gz
RUN chmod +x /flyway/flyway

COPY docker-entrypoint.sh /usr/local/bin/
