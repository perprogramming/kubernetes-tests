#!/bin/bash

docker build -t myapp app/
docker tag -f myapp:latest myapp:v1
docker tag -f myapp:latest myapp:v2

kubectl delete all --all --namespace=kubernetes-tests

kubectl create --namespace=kubernetes-tests -f service.yml
kubectl create --namespace=kubernetes-tests -f v1.yml

sleep 20

curl http://localhost/test.php | head