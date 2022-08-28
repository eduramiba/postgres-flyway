# Introduction

Docker image with postgres and auto-executed flyway migrations for integration testing purposes.

Postgres version: 14.5
Flyway version: 9.2.0

# How to use

Inherit from this image in a dockerfile like this:

```Dockerfile
FROM eduramiba/postgres-flyway:14.5

#jar with migrations in SQL or java
COPY *.jar /flyway/jars/
COPY conf/flyway.conf /flyway/conf
```
