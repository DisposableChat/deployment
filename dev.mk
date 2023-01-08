all:
	docker compose up -f docker-compose.dev.yml --force-recreate --abort-on-container-exit --build --remove-orphans