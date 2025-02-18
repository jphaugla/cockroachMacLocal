if [ $# -lt 2 ]; then
    echo 'must provide node index from 0 to 3 and a file name'
    exit 1
fi
export NODE=$1
export BASEVALUE=26256
infile=$2
# node0 is actually the loadbalancer
echo 'NODE is ' ${NODE} 
echo 'FILE is ' ${infile} 
(( PORT = ${BASEVALUE} + ${NODE} ))
echo 'PORT is ' ${PORT} 
cockroach sql --insecure --host=localhost:${PORT} --file ${infile}
