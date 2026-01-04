# docker-duplicity-mariadb

docker-duplicity flavor with added mariadb client utilities.

Based on `docker-duplicity` from https://github.com/Tecnativa/docker-duplicity with added mariadb client utilities.

adds a 200 daily/weekly job dumping the db to `src/<db-name>.sql`. recognized environment variables:

* `MARIADB_DATABASE` \
  database to include in the backup, e.g. `"db1"`
* `MARIADB_HOST` \
  database host to connect to, e.g. `"db_host"`
* `MARIADB_USERNAME` \
  database username to connect with, e.g. `"db_user"`
* `MARIADB_PASSWORD` \
  database password to connect with, e.g. `"db_password"`
* `MARIADB_DUMP_OPTIONS` \
  additional mariadb dump options to use. e.g. `"--single-transaction"`
* `MARIADB_DUMP_DEFAULT_OPTIONS` \
  mariadb dump default options to use. overriding this option disables the host, username and password options.
