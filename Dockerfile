FROM postgres:16.0
LABEL maintainer "eduramiba@gmail.com"

ADD https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/9.22.1/flyway-commandline-9.22.1-linux-x64.tar.gz /flyway.tar.gz
RUN tar xvf /flyway.tar.gz
RUN mv flyway-9.22.1 flyway
RUN rm -rf /flyway.tar.gz
RUN chmod +x /flyway/flyway

COPY docker-entrypoint.sh /usr/local/bin/
