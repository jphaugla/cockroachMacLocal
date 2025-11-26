export CLIENT_NODE=pg_client
echo 'CLIENT_NODE is ' ${CLIENT_NODE}
export HOST=crdb1
echo 'HOST is ' ${HOST}
export DB_USER=root
export CERTS=/certs
export PORT=26257
export FULL_COMMAND="port=${PORT} host=${HOST} user=${DB_USER} sslcert=${CERTS}/client.${DB_USER}.crt sslkey=${CERTS}/client.${DB_USER}.key sslrootcert=${CERTS}/ca.crt sslmode=verify-full"
echo 'full command is psql' ${FULL_COMMAND}
docker exec -it ${CLIENT_NODE} psql "${FULL_COMMAND}"
