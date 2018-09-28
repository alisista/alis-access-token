SHELL := /usr/bin/env bash
NAME = "alis"

default: help

# http://postd.cc/auto-documented-makefile/
help: ## help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: docker-build
docker-build: ## Build Docker
	@docker build -t $(NAME):latest .

