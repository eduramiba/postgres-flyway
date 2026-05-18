IMAGE ?= eduramiba/postgres-flyway
TAG ?= 18.4

.PHONY: build build-multi

build:
	docker build -t $(IMAGE):$(TAG) .

build-multi:
	docker buildx build -t $(IMAGE):$(TAG) --platform linux/amd64,linux/arm64 .
