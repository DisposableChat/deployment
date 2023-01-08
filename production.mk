all:
	chmod +x ./go-modules.sh && ./go-modules.sh && sudo docker network create --gateway 172.20.0.1 --subnet 172.20.0.0/16 appnet && chmod x+ ./generate_key.sh && ./generate_key.sh && docker compose -f docker-compose.prod.yml up --force-recreate --abort-on-container-exit --build