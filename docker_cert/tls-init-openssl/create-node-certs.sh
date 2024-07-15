export NODE_NAME=$1
echo "Node Name is ${NODE_NAME}"
# this won't work because the crdb cluster is not up
# export IP_ADDRESS=`docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${NODE_NAME}`
# echo "IP address is ${IP_ADDRESS}"
mkdir -p /certs/${NODE_NAME}/
cp /certs/ca.crt /certs/${NODE_NAME}/
echo "before the sed"
# don't have IP address yet
# sed "s/Jasons-MBP-3/${NODE_NAME}/;s/ouch/${IP_ADDRESS}" /openssl-cnf/node.cnf > /certs/${NODE_NAME}/node.cnf
sed "s/Jasons-MBP-3/${NODE_NAME}/" /openssl-cnf/node.cnf > /certs/${NODE_NAME}/node.cnf
# cockroach cert create-node haproxy localhost ${NODE_NAME} --certs-dir=/certs/${NODE_NAME} --ca-key=/my-safe-directory/ca.key
echo "generate node.key"
openssl genrsa -out /certs/${NODE_NAME}/node.key 2048
chmod 400 /certs/${NODE_NAME}/node.key
echo "generate node.csr"
openssl req -new -config /certs/${NODE_NAME}/node.cnf -key /certs/${NODE_NAME}/node.key -out /certs/${NODE_NAME}/node.csr -batch
echo "generate node.crt"
openssl ca -config /openssl-cnf/ca.cnf -keyfile /my-safe-directory/ca.key -cert /certs/ca.crt -policy signing_policy -extensions signing_node_req -out /certs/${NODE_NAME}/node.crt -outdir /certs/${NODE_NAME} -in /certs/${NODE_NAME}/node.csr -batch
