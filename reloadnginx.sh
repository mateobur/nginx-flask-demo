#!/bin/bash

kubectl delete cm nginxconfig
kubectl delete rc nginx
kubectl create configmap nginxconfig --from-file nginx.conf
kubectl create -f nginxrc.yaml
