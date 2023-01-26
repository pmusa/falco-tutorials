#!/bin/bash

# install Falco
apt-get update
apt-get -y install linux-headers-$(uname -r)
helm repo add falcosecurity https://falcosecurity.github.io/charts
helm repo update
kubectl create ns falco
helm install falco -n falco --set tty=true falcosecurity/falco

kubectl run alpine --image=alpine -- sh -c "sleep 3600"

cat << EOF > redis-pv-01.yaml
kind: PersistentVolume
apiVersion: v1
metadata:
  name: redis-pv-01
spec:
  capacity: 
    storage: "1Gi"
  hostPath: 
    path: "/data/redis/pv01"
  volumeMode: Filesystem
  accessModes:
    - ReadWriteOnce
EOF

kubectl apply -f redis-pv-01.yaml
