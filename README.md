# PostgreSQL Database

Launch a Docker PostgreSQL 15 server with restarts.

### Docker

This will create a permanent volume with the directory name `postgres-data`
which allows for persistence across restarts.

```
docker build -t fractal-postgres
```

```docker
docker run \
	--name fractal-prod \
	-p 5432 \
	-v ./postgres-data:/var/lib/postgresql/data \
	--restart always
	fractal-postgres
```