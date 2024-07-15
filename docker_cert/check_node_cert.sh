CRT_FILE=$1
# openssl x509 -in ${CRT_FILE} -text |grep "X509v3 Subject Alternative Name" -A 1
# this seems to get all the pertinent ones
# openssl x509 -in ${CRT_FILE} -text |grep X509v3 -A 1
openssl x509 -in ${CRT_FILE} -text 
