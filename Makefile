#!/usr/bin/make -f

.PHONY: buildl
.DEFAULT_GOAL := build

govendor:
	@go get -u github.com/kardianos/govendor
	@govendor fetch +m

init: govendor
	@mkdir -p target/

build: init
	@go build -o target/nathealthd

test: init
	@go test -o target/nathealthd.test

all: build test
