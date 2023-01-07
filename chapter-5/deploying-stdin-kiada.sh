kubectl apply -f pod.kiada-stdin.yaml

# port forwarding kiada-stdin
kubectl port-forward kiada-stdin 8888:8080
