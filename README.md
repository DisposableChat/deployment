# How

Enviroment Variables

Template has to be api.production.env
```go
REDIS_HOST=172.20.0.3 // Configured in network creation in production.mk
REDIS_PORT=6379 // default redis port
REDIS_PASSWORD=password // Configured in docker-compose.(dev/prod).yml

API_CONTAINER_LOCAL_ADDRESS=0.0.0.0 // Address alocation of every API into his own container

API_USERS_CONTAINER_PORT=8080 // Default port for every API module into his own container

SSL_CERTIFICATE_PATH=/etc/ssl/cert.pem // Into docker container path
SSL_CERTIFICATE_KEY_PATH=/etc/ssl/priv.key // Into docker container path
```

# Clone API modules

In a same folder

```
-api
    -api-auth
    -api-users
    -deployment (this repo)
```

# Run

Production

```js
make -f production.mk // Create SSL certificates, gives permission to file to execute, create docker network and compose up
```

Development

```js
make -f dev.mk // Build everything from scratch again
make -f fast.dev.mk // Run default
```

## Requirements

- Unix based OS
- [Ubuntu](https://docs.docker.com/engine/install/ubuntu/)
