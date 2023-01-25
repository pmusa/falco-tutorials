Verify that Falco is running correctly using the `kubectl` command:
```bash
kubectl get pods -n falco
```{{exec}}

Wait until the pod(s) are ready:
```bash
kubectl wait pods --for=condition=Ready --all -n falco
```{{exec}}
