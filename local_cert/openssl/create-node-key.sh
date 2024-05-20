# cockroach cert create-node 174.141.204.193 localhost 127.0.0.1 Jasons-MBP-3 --certs-dir=certs --ca-key=my-safe-directory/ca.key
openssl genrsa -out certs/node.key 2048
chmod 400 certs/node.key
