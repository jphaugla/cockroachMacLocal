kubectl delete secret cockroachdb.client.root --ignore-not-found=true
kubectl create secret generic cockroachdb.client.root --from-file=certs
