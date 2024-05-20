cockroach start --certs-dir=certs --store=node2 --listen-addr=localhost:26258 --http-addr=localhost:18081 --join=localhost:26257,localhost:26258,localhost:26259 --background
