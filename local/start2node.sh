cockroach start --insecure --store=node2 --listen-addr=0.0.0.0:26258 --http-addr=0.0.0.0:8081 --join=0.0.0.0:26257,0.0.0.0:26258,0.0.0.0:26259 --locality=region=us-west,zone=c --background
