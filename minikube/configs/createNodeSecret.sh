kubectl delete secret cockroachdb.node --ignore-not-found=true
kubectl create secret generic cockroachdb.node --from-file=certs
