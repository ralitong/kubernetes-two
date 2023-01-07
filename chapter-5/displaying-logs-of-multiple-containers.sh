# displaying the kiada-log
kubectl logs kiada-ssl -c kiada

# displaying the envoy log
kubectl logs kiada-ssl -c envoy

# displaying logs for both kiada & envoy
kubectl logs kiada-ssl --all-containers
