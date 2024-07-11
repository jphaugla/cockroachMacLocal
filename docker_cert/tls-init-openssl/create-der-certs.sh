openssl x509 -outform der -in /certs/ca.crt -out /certs/ca.crt.der
openssl x509 -outform der -in /certs/client.root.crt -out /certs/client.root.crt.der
openssl pkcs8 -topk8 -inform PEM -outform DER -in /certs/client.root.key -out /certs/client.root.key.der -nocrypt
