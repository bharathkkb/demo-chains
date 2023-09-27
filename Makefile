# Make will use bash instead of sh
SHELL := /usr/bin/env bash

DOCKER_TAG_VERSION_DEVELOPER_TOOLS := 1.16
DOCKER_IMAGE_DEVELOPER_TOOLS := cft/developer-tools
REGISTRY_URL := gcr.io/cloud-foundation-cicd
DOCKER_BIN ?= docker

.PHONY: docker_test_lint
docker_test_lint:
	$(DOCKER_BIN) run --rm -it \
		-e ENABLE_PARALLEL=1 \
		-v "$(CURDIR)":/workspace \
		$(REGISTRY_URL)/${DOCKER_IMAGE_DEVELOPER_TOOLS}:${DOCKER_TAG_VERSION_DEVELOPER_TOOLS} \
		/usr/local/bin/test_lint.sh
