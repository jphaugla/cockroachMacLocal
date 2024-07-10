if [ $# -lt 1 ]; then
    echo 'must provide node index from 0 to 3 with 0 being haproxy'
    exit 1
fi
export NODE=$1
export BASEVALUE=26256
export CLIENT_NODE=crdb_init
# node0 is actually the loadbalancer
echo 'NODE is ' ${NODE} 
(( PORT = ${BASEVALUE} + ${NODE} ))
echo 'PORT is ' ${PORT} 
echo 'CLIENT_NODE is ' ${CLIENT_NODE}
if [ ${NODE} = '0' ]; then
  export CONTAINER_CRDB=haproxy
else
  export CONTAINER_CRDB=crdb${NODE}
fi
echo 'CONTAINER_CRDB is ' ${CONTAINER_CRDB}
docker exec -it ${CLIENT_NODE} cockroach sql --certs-dir=/certs --host=${CONTAINER_CRDB} --port=${PORT}
