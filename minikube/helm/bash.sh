kubectl run cockroachdb -it --image=cockroachdb/cockroach:v23.1.13 --rm --restart=Never -- sql --insecure --host=my-release-cockroachdb-public
