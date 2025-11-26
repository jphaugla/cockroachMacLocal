export NODE_NAME=$1
mkdir -p /certs/${NODE_NAME}/
cp /certs/ca.crt /certs/${NODE_NAME}/
cockroach cert create-node haproxy localhost ${NODE_NAME} --certs-dir=/certs/${NODE_NAME} --ca-key=/my-safe-directory/ca.key
