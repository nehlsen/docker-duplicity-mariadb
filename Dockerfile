FROM ghcr.io/tecnativa/docker-duplicity:4.0.0 AS base

RUN apk add --no-cache mariadb-client \
    && mariadb-dump --version

ENV JOB_200_WHAT='set -euo pipefail; mariadb-dump \$MARIADB_DUMP_DEFAULT_OPTIONS \$MARIADB_DUMP_OPTIONS \"\$MARIADB_DATABASE\"'
ENV JOB_200_WHEN='daily weekly' \
    MARIADB_DATABASE='my_database' \
    MARIADB_HOST='my_database_host' \
    MARIADB_USERNAME='my_database_username' \
    MARIADB_PASSWORD='my_database_password' \
    MARIADB_DUMP_DEFAULT_OPTIONS='--host=\$MARIADB_HOST --user=\$MARIADB_USERNAME --password=\$MARIADB_PASSWORD --result-file=\"\$SRC/\$MARIADB_DATABASE.sql\"' \
    MARIADB_DUMP_OPTIONS=''
