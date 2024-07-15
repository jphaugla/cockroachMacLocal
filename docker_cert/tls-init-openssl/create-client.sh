# cockroach cert create-client root --certs-dir=/certs --ca-key=/my-safe-directory/ca.key
echo "create client.root.key"
openssl genrsa -out /certs/client.root.key 2048
chmod 400 /certs/client.root.key
echo "create client.root.csr"
openssl req -new -config /openssl-cnf/client.cnf -key /certs/client.root.key -out /certs/client.root.csr -batch
chmod 400 /certs/client.root.csr
echo "create client.root.crt"
openssl ca -config /openssl-cnf/ca.cnf -keyfile /my-safe-directory/ca.key -cert /certs/ca.crt -policy signing_policy -extensions signing_client_req -out /certs/client.root.crt -outdir /certs/ -in /certs/client.root.csr -batch
chmod 400 /certs/client.root.crt
# cockroach cert create-client teleport --certs-dir=/certs --ca-key=/my-safe-directory/ca.key
echo "create client.teleport.key"
openssl genrsa -out /certs/client.teleport.key 2048
chmod 400 /certs/client.teleport.key
echo "create client.teleport.csr"
openssl req -new -config /openssl-cnf/client_teleport.cnf -key /certs/client.teleport.key -out /certs/client.teleport.csr -batch
chmod 400 /certs/client.teleport.csr
echo "create client.teleport.crt"
openssl ca -config /openssl-cnf/ca.cnf -keyfile /my-safe-directory/ca.key -cert /certs/ca.crt -policy signing_policy -extensions signing_client_req -out /certs/client.teleport.crt -outdir /certs/ -in /certs/client.teleport.csr -batch
chmod 400 /certs/client.teleport.crt
