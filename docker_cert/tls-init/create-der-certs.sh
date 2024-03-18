cd ../certs
openssl x509 -outform der -in ca.crt -out ca.crt.der
openssl x509 -outform der -in client.root.crt -out client.root.crt.der
openssl pkcs8 -topk8 -inform PEM -outform DER -in client.root.key -out client.root.key.der -nocrypt
