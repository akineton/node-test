SHELL := /usr/bin/env bash -e -o pipefail

# Default rule
default: build

# Builds docker image and starts container
# Lock file is used to track if project was built 
.PHONY: build
build:
	docker-compose up --build -d;

# Runs tests
.PHONY: test
test:
	docker-compose exec nodejs npm test;

# Stops containers and cleans project
.PHONY: clean
clean:
	docker-compose down -v;
