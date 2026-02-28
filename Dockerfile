ARG FLYWAY_VERSION=12.0.3
FROM flyway/flyway:${FLYWAY_VERSION} AS flyway

FROM postgres:18.3
LABEL maintainer="eduramiba@gmail.com"

ARG FLYWAY_VERSION=12.0.3
ENV FLYWAY_VERSION=${FLYWAY_VERSION}

RUN set -eux; \
    apt-get update; \
    apt-get install -y --no-install-recommends openjdk-21-jdk-headless ca-certificates; \
    rm -rf /var/lib/apt/lists/*

COPY --from=flyway /flyway /flyway
RUN set -eux; \
    chmod +x /flyway/flyway

COPY docker-entrypoint.sh /usr/local/bin/
