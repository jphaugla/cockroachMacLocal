if [ $# -lt 1 ]; then
    echo 'must provide node index from 0 to 3'
    exit 1
fi
export NODE=$1
export BASEVALUE=26256
# node0 is actually the loadbalancer
echo 'NODE is ' ${NODE}
(( PORT = ${BASEVALUE} + ${NODE} ))
echo 'PORT is ' ${PORT}
URL="postgresql://root@crdb"${NODE}:${PORT}"?sslmode=disable"
echo 'URL is' ${URL}
# cockroach workload init bank 'postgresql://root@Jasons-MBP:26257?sslmode=disable'
# cockroach workload run bank --duration=19m 'postgresql://root@Jasons-MBP:26256?sslmode=disable'
docker exec crdb${NODE} cockroach workload run bank --duration=19m ${URL}
