# cockroach cert create-client root --certs-dir=certs --ca-key=my-safe-directory/ca.key
openssl genrsa -out certs/client.jhaugland.key 2048
chmod 400 certs/client.jhaugland.key
openssl req -new -config client.cnf -key certs/client.jhaugland.key -out certs/client.jhaugland.csr -batch
chmod 400 certs/client.jhaugland.csr
openssl ca -config ca.cnf -keyfile my-safe-directory/ca.key -cert certs/ca.crt -policy signing_policy -extensions signing_client_req -out certs/client.jhaugland.crt -outdir certs/ -in certs/client.jhaugland.csr -batch
chmod 400 certs/client.jhaugland.crt
