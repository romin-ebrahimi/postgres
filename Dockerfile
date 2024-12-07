FROM postgres:15.8

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=postgres
ENV PGDATA=/var/lib/postgresql/data/pgdata

RUN mkdir -p /tmp/psql_data/

EXPOSE 5432

COPY db/structure.sql /tmp/psql_data/
COPY scripts/init_docker_postgres.sh /docker-entrypoint-initdb.d/

CMD ["postgres"]