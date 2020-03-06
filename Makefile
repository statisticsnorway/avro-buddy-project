.PHONY: default
default: | help

.PHONY: update-all
update-all: ## Pull/clone remote repos
	./git-update.sh

.PHONY: status-all
status-all: ## Show a brief summary of local changes
	./git-status.sh

.PHONY: build-all
build-all: ## Build all
	mvn clean install

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
