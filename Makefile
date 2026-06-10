.PHONY: up down restart logs logs-gateway logs-dashboard status update

update:
	git pull
	docker compose build
	HERMES_UID=$(shell id -u) HERMES_GID=$(shell id -g) docker compose up -d

up:
	HERMES_UID=$(shell id -u) HERMES_GID=$(shell id -g) docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

logs-gateway:
	docker compose logs -f gateway

logs-dashboard:
	docker compose logs -f dashboard

status:
	docker compose ps
