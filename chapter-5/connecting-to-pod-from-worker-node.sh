# Since this machine is also the worker node
# You can just curl directly to the pod

# NAME    READY   STATUS    RESTARTS   AGE     IP             NODE                 NOMINATED NODE   READINESS GATES
# kiada   1/1     Running   0          6m34s   10.1.162.152   workenvironmenttwo   <none>           <none>

# curl 10.1.162.152:8080
# Kiada version 0.1. Request processed by "kiada". Client IP: ::ffff:10.0.2.15