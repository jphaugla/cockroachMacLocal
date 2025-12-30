pg_restore -v -d employees -U postgres -h localhost -Fc  ./employees.sql.gz --no-privileges --no-owner -c
