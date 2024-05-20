cockroach start --certs-dir=certs --store=node3 --listen-addr=localhost:26259 --http-addr=localhost:18082 --join=localhost:26257,localhost:26258,localhost:26259 --background
