[cockroach cert](https://www.cockroachlabs.com/docs/stable/cockroach-cert)
this is for the second tab [using openssl](https://www.cockroachlabs.com/docs/v23.2/create-security-certificates-openssl)

## Step 1
* clean out and recreate the certs and my-safe-directories
* see [mkdirs.sh](mkdirs.sh)
```bash
./mkdirs.sh
```
* create the ca.cnf file - [here is a sample ca.cnf](ca.cnf)
* create the ca key
* see [create-ca-key.sh](create-ca-key.sh)
```bash
./create-ca-key.sh
```
* this creates ca.crt and resets text files
* see [create-ca-crt.sh](create-ca-crt.sh)
```bash
./create-ca-crt.sh
```
## Step 2
* edit the node.cnf file [here is a sample node.cnf](node.cnf)
* create node key
* see [create-node-key.sh](create-node-key.sh)
```bash
./create-node-key.sh
```
* create node csr
* see [create-node-csr.sh](create-node-csr.sh)
```bash
./create-node-csr.sh
```
* create node crt and verify node
* see [create-node-crt.sh](create-node-node-crt.sh)
```bash
./create-node-crt.sh
./verify-node.sh
```
## Step 3
* edit the client.cnf file [here is a sample client.cnf](client.cnf)
* notice substitution on username to jhaugland
* create client certificate and key
* this creates client.jhaugland.crt and client.jhaugland.key 
* verify the client
* see [create-client.sh](create-client.sh) and [verify-client.sh](verify-client.sh)
```bash
./create-client.sh
./verify-client.sh
```
## Step 4
* Start the cluster in single node format with [start](start-single.sh) 
OR
* Start the cluster as 3 nodes with these files
  * see [start1node.sh](start1node.sh) [start2node.sh](start2node.sh) [start3node.sh](star32node.sh)
* Initialize the cluster see [init.sh](init.sh)
```bash
./start1node.sh
./start2node.sh
./startt3node.sh
./init.sh
```
* Finally connect with [connect](sql.sh)
```bash
./sql.sh
```
* Can validate the keys with [client-cert-list.sh](client-cert-list.sh)
```bash
./client-cert-list
Certificate directory: certs
  Usage  | Certificate File |    Key File     |  Expires   |                            Notes                            | Error
---------+------------------+-----------------+------------+-------------------------------------------------------------+--------
  CA     | ca.crt           |                 | 2025/05/21 | num certs: 1                                                |
  Node   | node.crt         | node.key        | 2025/05/21 | addresses: Jasons-MBP-3,localhost,174.141.204.193,127.0.0.1 |
  Client | client.root.crt  | client.root.key | 2025/05/21 | user: root                                                  |
(3 rows)
```
