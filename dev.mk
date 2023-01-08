all:
	chmod +x ./go-modules.sh && ./go-modules.sh && docker compose -f docker-compose.dev.yml up --force-recreate --abort-on-container-exit --build --remove-orphans