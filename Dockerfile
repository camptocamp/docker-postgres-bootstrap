FROM postgres:9.6

ENV POSTGRES_HOST=postgres

COPY ./docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
