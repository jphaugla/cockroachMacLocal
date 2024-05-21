# cockroach cert create-client root --certs-dir=certs --ca-key=my-safe-directory/ca.key
openssl genrsa -out certs/client.root.key 2048
chmod 400 certs/client.root.key
openssl req -new -config client.cnf -key certs/client.root.key -out certs/client.root.csr -batch
chmod 400 certs/client.root.csr
openssl ca -config ca.cnf -keyfile my-safe-directory/ca.key -cert certs/ca.crt -policy signing_policy -extensions signing_client_req -out certs/client.root.crt -outdir certs/ -in certs/client.root.csr -batch
chmod 400 certs/client.root.crt
