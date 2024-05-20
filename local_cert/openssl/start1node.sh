cockroach start --certs-dir=certs --store=node1 --listen-addr=localhost:26257 --http-addr=localhost:18080 --join=localhost:26257,localhost:26258,localhost:26259 --background
