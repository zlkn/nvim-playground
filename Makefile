.PHONY: help


PYTHON ?= python3

.DEFAULT_GOAL := help
define PRINT_HELP_PYSCRIPT
import re, sys

for line in sys.stdin:
    match = re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$', line)
    if match:
        target, help = match.groups()
        print("%-20s %s" % (target, help))
endef
export PRINT_HELP_PYSCRIPT


help:   ## Show this help
	@$(PYTHON) -c "$$PRINT_HELP_PYSCRIPT" < $(MAKEFILE_LIST)


build: ## Build the Docker image for neovim-playground.
	export UID=$(id -u)
	export GID=$(id -g)
	docker build -t neovim-playground .

run: ## Run the neovim service using Docker Compose.
	export UID=$(id -u)
	export GID=$(id -g)
	docker compose run --rm neovim

