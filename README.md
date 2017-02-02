PostgreSQL Bootstrap
====================

Execute all *.sh, *.sql and *.sql.gz scripts located in /scripts/.

Usage:
------

 $ docker --add-host database.example.com:postgres -e POSTGRES_USER=postgres -e PGPASSWORD=secret -v ./scripts:/scripts camptocamp/postgres-executor

Warning:
--------

In order to not insert multiple times the same date in case the container restarts, you should have a script that runs first that fails if the bootstrap has already been done ; for exemple, a script that creates a ROLE or a DATABASE.
