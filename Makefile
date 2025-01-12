.PHONY: build dev test

default: build

build:
	@./gradlew build

dev:
	@make -j2 dev-run dev-compile

dev-run:
	@./gradlew bootRun

dev-compile:
	@./gradlew -t classes

test:
	@./gradlew test
