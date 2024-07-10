if [ $# -lt 1 ]; then
    echo 'must provide node index from 1 to 3' 
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
docker exec -it ${CLIENT_NODE} cockroach node status --certs-dir=/certs --host=${CONTAINER_CRDB} --port=${PORT}
