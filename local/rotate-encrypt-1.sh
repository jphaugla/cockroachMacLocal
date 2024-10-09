oldprefix=$1
newprefix=$2
sudo ./mounttmp.sh
sudo cp data_key/${newprefix}aes-128.key /crdb-enc-keys-in-memory
sudo cp data_key/${oldprefix}aes-128.key /crdb-enc-keys-in-memory
sudo chown ec2-user /crdb-enc-keys-in-memory/*
./termNode.sh 1
cockroach start --insecure --store=node1 --enterprise-encryption=path=node1,key=/crdb-enc-keys-in-memory/${newprefix}aes-128.key,old-key=/crdb-enc-keys-in-memory/${oldprefix}aes-128.key --listen-addr=localhost:26257 --http-addr=localhost:8080 --join=localhost:26257,localhost:26258,localhost:26259 --locality=region=us-east,zone=a --background
