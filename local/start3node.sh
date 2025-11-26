cockroach start --insecure --store=node3 --listen-addr=0.0.0.0:26259 --http-addr=0.0.0.0:8082 --join=0.0.0.0:26257,0.0.0.0:26258,0.0.0.0:26259 --locality=region=us-central,zone=f --background
