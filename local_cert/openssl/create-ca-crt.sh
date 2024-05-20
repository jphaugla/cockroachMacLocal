# cockroach cert create-ca --certs-dir=certs --ca-key=my-safe-directory/ca.key
openssl req -new -x509 -config ca.cnf -key my-safe-directory/ca.key -out certs/ca.crt -days 365 -batch
chmod 400 certs/ca.crt
rm -f index.txt serial.txt
touch index.txt
echo '01' > serial.txt
