# Introduction

Docker image with postgres and auto-executed flyway migrations for integration testing purposes.

Postgres version: 13.1
Flyway version: 7.2.1

# How to use

Inherit from this image in a dockerfile like this:

```Dockerfile
FROM eduramiba/postgres-flyway:13.1

#jar with migrations in SQL or java
COPY *.jar /flyway/jars/
COPY conf/flyway.conf /flyway/conf
```
