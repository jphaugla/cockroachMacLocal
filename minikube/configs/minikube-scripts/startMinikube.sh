minikube config set cpus 8
minikube config set memory 16384
minikube start --driver qemu --network socket_vmnet
