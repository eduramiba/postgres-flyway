# Introduction

Docker image with postgres and auto-executed flyway migrations for integration testing purposes.

Postgres version: 11
Flyway version: 5.2.4

# How to use

Inherit from this image in a dockerfile like this:

```Dockerfile
FROM eduramiba/postgres-flyway:11

#jar with migrations in SQL or java
COPY *.jar /flyway/jars/
COPY conf/flyway.conf /flyway/conf
```
