CRT_FILE=$1
openssl x509 -in ${CRT_FILE} -text |grep "X509v3 Subject Alternative Name" -A 1
