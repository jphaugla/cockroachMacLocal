oldprefix=$1
newprefix=$2
./termNode.sh 1
cockroach start --insecure --store=node1 --enterprise-encryption=path=node1,key=data_key/${newprefix}aes-128.key,old-key=data_key/${oldprefix}aes-128.key --listen-addr=localhost:26257 --http-addr=localhost:8080 --join=localhost:26257,localhost:26258,localhost:26259 --locality=region=us-east,zone=a --background
