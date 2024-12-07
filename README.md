# PostgreSQL Database

Launch a Docker PostgreSQL 15 server with restarts.

### Run

```docker
docker run -d \
	--name fractal-prod \
	-p 5432:5432 <Id-docker-image> \
	-v ./postgres-data:/var/lib/postgresql/data \
	--restart always
```