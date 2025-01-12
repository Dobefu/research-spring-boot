.PHONY: build

default: build

build:
	@./gradlew bootRun

test:
	@./gradlew test
