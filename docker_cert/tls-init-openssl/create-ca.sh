# cockroach cert create-ca --certs-dir=/certs --ca-key=/my-safe-directory/ca.key
mkdir -p /certs
#
echo "generate ca.key"
openssl genrsa -out /my-safe-directory/ca.key 2048
chmod 400 /my-safe-directory/ca.key
#
echo "generate ca.crt"
openssl req -new -x509 -config /openssl-cnf/ca.cnf -key /my-safe-directory/ca.key -out /certs/ca.crt -days 365 -batch
chmod 400 /certs/ca.crt
#
rm -f /certs/index.txt /certs/serial.txt
touch /certs/index.txt
echo '01' > /certs/serial.txt
#
