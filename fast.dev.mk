all:
	chmod +x ./go-modules.sh && ./go-modules.sh && docker compose -f docker-compose.dev.yml up --abort-on-container-exit