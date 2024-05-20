[cockroach cert}(https://www.cockroachlabs.com/docs/stable/cockroach-cert)
this is for the second tab using openssl which [the full url is](https://www.cockroachlabs.com/docs/v23.2/create-security-certificates-openssl)

## Step 1
* clean out and recreate the certs and my-safe-directories
```bash
./mkdirs.sh
```
* create the ca.cnf file - [here is a sample ca.cnf](ca.cnf)
* create the ca key
```bash
./create-ca-key.sh
```
* this creates ca.crt and resets text files
```bash
./create-ca-crt.sh
```
## Step 2
* edit the node.cnf file [here is a sample node.cnf](node.cnf)
* create node key
```bash
./create-node-key.sh
```
* create node csr
```bash
./create-node-csr.sh
```
* create node crt and verify node
```bash
./create-node-crt.sh
./verify-node.sh
## Step 3
* edit the client.cnf file [here is a sample client.cnf](client.cnf)
* notice substitution on username to jhaugland
```
* create client certificate and key
* this creates client.jhaugland.crt and client.jhaugland.key 
* verify the client
```bash
./create-client.sh
./verify-client.sh
```
## Step 4
* Start the cluster and connect using the linked files to [start](start-single.sh) and [connect](sql.sh)
`
