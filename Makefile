.PHONY: build dev test

default: build

build:
	@./gradlew build

dev:
	@make -j3 dev-run dev-compile-backend dev-compile-frontend

dev-run:
	@./gradlew bootRun

dev-compile-backend:
	@./gradlew -t classes

dev-compile-frontend:
	@cd src/main/frontend && pnpm dev

test:
	@./gradlew test
