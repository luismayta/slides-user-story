.PHONY: build deploy lint test functions help
.DEFAULT_GOAL := help

# Configuration.
SHELL = /bin/bash
ROOT_DIR = $(shell pwd)
SCRIPT_DIR = $(ROOT_DIR)/script

# Bin scripts
CLEAN = $(shell) $(SCRIPT_DIR)/clean.sh
DOCUMENTATION = $(shell) $(SCRIPT_DIR)/documentation.sh
INSTALL = $(shell) $(SCRIPT_DIR)/install.sh
PYENV = $(shell) $(SCRIPT_DIR)/pyenv.sh
GENERATE = $(shell) $(SCRIPT_DIR)/generate.sh
INSTALL = $(shell) $(SCRIPT_DIR)/install.sh
WATCH = $(shell) $(SCRIPT_DIR)/watch.sh
LINT = $(shell) $(SCRIPT_DIR)/lint.sh
TEST = $(shell) $(SCRIPT_DIR)/test.sh


clean: ## clean Files compiled
	$(CLEAN)


environment: ## Make environment for developer
	$(PYENV)


documentation: ## Make Documentation
	make clean
	$(DOCUMENTATION)


generate:
	$(GENERATE)


install: ## Install Dependences
	$(INSTALL)


lint: ## Clean files unnecesary
	make clean
	$(LINT)


test: ## make test
	$(TEST)


watch: ## Show Live Reload landslide
	$(WATCH)


help: ## Show help text
	@echo "Commands:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "    \033[36m%-20s\033[0m %s\n", $$1, $$2}'
