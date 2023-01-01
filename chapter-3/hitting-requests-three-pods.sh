kubectl get deployment -o wide
# NAME                    READY   STATUS    RESTARTS      AGE     IP             NODE                 NOMINATED NODE   READINESS GATES
# kiada-b6564c596-cwhfn   1/1     Running   5 (70m ago)   5d22h   10.1.162.188   workenvironmenttwo   <none>           <none>
# kiada-b6564c596-nhnpj   1/1     Running   0             9m35s   10.1.162.185   workenvironmenttwo   <none>           <none>
# kiada-b6564c596-4vsc5   1/1     Running   0             9m35s   10.1.162.177   workenvironmenttwo   <none>           <none>


# NOTE: 192.168.56.4 is the IP address of this VM
# This was possible because metallb service was added in microk8s

curl 192.168.56.4:8080
# Request reaches pod A
# Kiada version 0.1. Request processed by "kiada-b6564c596-cwhfn". Client IP: ::ffff:10.0.2.15

curl 192.168.56.4:8080
# Request reaches pod B
# Kiada version 0.1. Request processed by "kiada-b6564c596-nhnpj". Client IP: ::ffff:10.0.2.15

curl 192.168.56.4:8080
# Request reaches pod C
# Kiada version 0.1. Request processed by "kiada-b6564c596-4vsc5". Client IP: ::ffff:10.0.2.15

curl 192.168.56.4:8080
# Request reaches pod B again becuase the service that exposed the app acts as a load balancer
# Kiada version 0.1. Request processed by "kiada-b6564c596-nhnpj". Client IP: ::ffff:10.0.2.15
