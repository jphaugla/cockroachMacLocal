./download_stateful_sets.sh
cp cockroachdb-statefulset.yaml cockroachdb-statefulset-clean.yaml
# setting namespace to cockroach
sed -i -e "s/namespace: default/namespace: cockroach/g" cockroachdb-statefulset.yaml
sed -i -e "s/v1beta1/v1/g" cockroachdb-statefulset.yaml
sed -i -e "s/8Gi/4Gi/g" cockroachdb-statefulset.yaml
rm -f cockroachdb-statefulset.yaml-e
kubectl apply -f ./create-namespace.yaml
kubectl config set-context --current --namespace=cockroach
# clean out certs and my-safe-directory
rm -f certs/*
rm -f my-safe-directory/*
./create-ca.sh
./createRootCa.sh
./createSecret.sh
./createCerts.sh
./createNodeSecret.sh
./createCluster.sh
./createClient.sh
./init.sh
