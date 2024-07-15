echo 'this script must be run from crdb-init because crdb clusters don't have the client keys
if [ $# -lt 1 ]; then
    echo 'must provide node index from 1 to 3'
    exit 1
fi
export NODE=$1
export BASEVALUE=26256
export CERTS=/certs
#
# set user
# export DB_USER=root
export DB_USER=teleport
# 
# set database
export DB=teleport
# node0 is actually the loadbalancer
echo 'NODE is ' ${NODE}
(( PORT = ${BASEVALUE} + ${NODE} ))
echo 'PORT is ' ${PORT}
if [ ${NODE} = '0' ]; then
  export TARGET=haproxy
else
  export TARGET=crdb${NODE}
fi
echo 'TARGET is ' ${TARGET}
FULL_CMD=
echo "full command is ${FULL_URL}"
export FULL_URL="postgresql://${DB_USER}@${TARGET}:${PORT}/${DB}?sslmode=verify-full&sslrootcert=${CERTS}/ca.crt&sslcert=${CERTS}/client.${DB_USER}.crt&sslkey=${CERTS}/client.${DB_USER}.key"
echo "the URL is ${FULL_URL}"
cockroach sql --url ${FULL_URL}
