# If using microk8s enable metallb
# microk8s enable metallb ^_^

kubectl expose deployment kiada --type=LoadBalancer --port 8080