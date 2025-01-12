# PostgreSQL Database

Launch a Docker PostgreSQL 15 server with restarts.

### Run

```docker
docker run \
	--name fractal-prod \
	-p 5432 \
	-v ./postgres-data:/var/lib/postgresql/data \
	--restart always
```