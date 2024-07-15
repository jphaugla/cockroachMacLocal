export PORT=26258
export HOST=crdb2
# change port to match container
# 26256 haproxy
# 26257 crdb1
# 26258 crdb2
# 26259 crdb3
export DB_USER=root
# export DB_USER=teleport
export CERTS=/certs
export FULL_COMMAND="port=${PORT} host=${HOST} user=${DB_USER} sslcert=${CERTS}/client.${DB_USER}.crt sslkey=${CERTS}/client.${DB_USER}.key sslrootcert=${CERTS}/ca.crt sslmode=verify-full"
echo 'full command is psql' ${FULL_COMMAND}
psql "${FULL_COMMAND}"
