cockroach start --insecure --store=node1 --listen-addr=0.0.0.0:26257 --http-addr=0.0.0.0:8080 --join=0.0.0.0:26257,0.0.0.0:26258,0.0.0.0:26259 --locality=region=us-east,zone=a --background
