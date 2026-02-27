FROM postgres:18.3
LABEL maintainer="eduramiba@gmail.com"

ENV FLYWAY_VERSION=12.0.3

ADD https://github.com/flyway/flyway/releases/download/flyway-${FLYWAY_VERSION}/flyway-commandline-${FLYWAY_VERSION}-linux-x64.tar.gz /flyway.tar.gz
RUN tar xvf /flyway.tar.gz
RUN mv flyway-${FLYWAY_VERSION} flyway
RUN rm -rf /flyway.tar.gz
RUN chmod +x /flyway/flyway

COPY docker-entrypoint.sh /usr/local/bin/
