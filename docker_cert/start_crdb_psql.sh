# run teleport with crdb, crdb_init client, and psql
docker-compose -f docker-compose.yml -f docker-compose-psql.yml up -d
