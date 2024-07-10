# this works for local machine connect
export TARGET=localhost
export CERTS=../certs
# this works for inside docker container
# export TARGET=crdb1
# export CERTS=/certs
#
# set user
# export DB_USER=root
export DB_USER=teleport
# 
# set database
export DB=teleport
#
export FULL_URL="postgresql://${DB_USER}@${TARGET}:26258/${DB}?sslmode=verify-full&ssl${DB_USER}cert=${CERTS}/ca.crt&sslcert=${CERTS}/client.${DB_USER}.crt&sslkey=${CERTS}/client.${DB_USER}.key"
echo "the URL is ${FULL_URL}"
cockroach sql --url ${FULL_URL}
