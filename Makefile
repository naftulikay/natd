#!/usr/bin/make -f

.PHONY: buildl
.DEFAULT_GOAL := build

BINARY:=$(shell basename $$PWD)

govendor:
	@go get -u github.com/kardianos/govendor
	@govendor fetch +m

init: govendor
	@mkdir -p target/

build: init
	@go build -o target/$(BINARY)

test: init
	@go test -o target/$(BINARY).test

clean:
	@rm -fr target/

all: build test
