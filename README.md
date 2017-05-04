# nginx-flask-demo

Trivially simple nginx + flask Kubernetes scenario, easy to customize to create web demos and examples.

Edit 'nginx.conf' and 'app.py' with the desired frontend and backend configuration.

Create the associated configMaps:

```
kubectl create configmap nginxconfig --from-file nginx.conf
kubectl create configmap flaskapp --from-file app.py
```

create the replica controllers:

```
kubectl create -f nginxrc.yaml
kubectl create -f flaskrc.yaml
```

