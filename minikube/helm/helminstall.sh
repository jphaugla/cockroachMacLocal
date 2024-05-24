helm repo add cockroachdb https://charts.cockroachdb.com/
helm repo update
helm install my-release cockroachdb/cockroachdb
kubectl get pods
