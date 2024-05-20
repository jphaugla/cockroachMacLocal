# cockroach cert create-ca --certs-dir=certs --ca-key=my-safe-directory/ca.key
openssl genrsa -out my-safe-directory/ca.key 2048
chmod 400 my-safe-directory/ca.key
