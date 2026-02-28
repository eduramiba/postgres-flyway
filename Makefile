IMAGE ?= eduramiba/postgres-flyway
TAG ?= 18.3

.PHONY: build-amd64 build-arm64 build-multi

build-multi:
	docker buildx build -t $(IMAGE):$(TAG) --platform linux/amd64,linux/arm64 .
