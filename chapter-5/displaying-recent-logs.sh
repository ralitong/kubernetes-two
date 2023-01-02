# Displaying logs since 2 minutes ago
kubectl logs kiada --since=2m

# Displaying logs using a long timestamp
kubectl logs kiada --since-time=2020-02-01T09:50:00Z

# Displaying last 10 lines of logs
kubectl logs kiada --tail=10
