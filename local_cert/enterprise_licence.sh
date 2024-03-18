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
cockroach sql --certs-dir=certs --host=localhost:${PORT} --execute "SET CLUSTER SETTING cluster.organization=${TF_VAR_cluster_organization}"
cockroach sql --certs-dir=certs --host=localhost:${PORT} --execute "SET CLUSTER SETTING enterprise.license='${TF_VAR_enterprise_license}'"
