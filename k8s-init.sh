# Init K8S with public ip address
kubeadm init --control-plane-endpoint $(curl -s ifconfig.me)

# Install pod network - weave
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"

# Allow control plane node to deploy workload
kubectl taint no $(hostname) node-role.kubernetes.io/master:NoSchedule-
