if [ $# -lt 1 ]; then
    echo 'must provide node index from 1 to 3'
    exit 1
fi
export NODE=$1
# node0 is actually the loadbalancer
echo 'NODE is ' ${NODE} 
docker exec -it crdb${NODE} bash
