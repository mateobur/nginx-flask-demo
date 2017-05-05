#!/bin/bash

kubectl delete cm flaskapp
kubectl delete rc flask
kubectl create configmap flaskapp --from-file app.py
kubectl create -f flaskrc.yaml
