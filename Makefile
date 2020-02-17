.PHONY: default
default: | help

.PHONY: install
install: ## Checkout all 
	./git-checkout.sh

.PHONY: update-all
update-all: ## Pull all changes from remote repos
	./git-pull.sh

.PHONY: status-all
status-all: ## Show a brief summary of local changes
	./git-status.sh

.PHONY: build-all
build-all: ## Build all
	./mvnw clean install

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
