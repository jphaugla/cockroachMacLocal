export NODE_NAME=$1
mkdir -p /certs/${NODE_NAME}/
cp /certs/ca.crt /certs/${NODE_NAME}/
echo "before the sed"
sed "s/Jasons-MBP-3/${NODE_NAME}/" /tls-init/node.cnf > /certs/${NODE_NAME}/node.cnf
# cockroach cert create-node haproxy localhost ${NODE_NAME} --certs-dir=/certs/${NODE_NAME} --ca-key=/my-safe-directory/ca.key
echo "generate node.key"
openssl genrsa -out /certs/${NODE_NAME}/node.key 2048
chmod 400 /certs/${NODE_NAME}/node.key
echo "generate node.csr"
openssl req -new -config /certs/${NODE_NAME}/node.cnf -key /certs/${NODE_NAME}/node.key -out /certs/${NODE_NAME}/node.csr -batch
echo "generate node.crt"
openssl ca -config /tls-init/ca.cnf -keyfile /my-safe-directory/ca.key -cert /certs/ca.crt -policy signing_policy -extensions signing_node_req -out /certs/${NODE_NAME}/node.crt -outdir /certs/${NODE_NAME} -in /certs/${NODE_NAME}/node.csr -batch
