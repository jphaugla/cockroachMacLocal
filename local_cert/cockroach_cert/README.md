[cockroach cert}(https://www.cockroachlabs.com/docs/stable/cockroach-cert)
* clean out the certs dir
```bash
rm -f certs/*
```
* create the ca key
* this creates ca.crt with 644 permission
```bash
./create-ca.sh
```
* create node certificate and key
* this creates node.crt with 644 and node.key with 600
```bash
./create-node-certs.sh
```
* create client certificate and key
* this creates client.root.crt with 644 and client.root.key with 600
```bash
./create-client.sh
```

