Verify that Falcosidekcik and Falcosidekick-UI are running correctly using
the `kubectl` command:
```bash
kubectl get pods -n falco
```{{exec}}

Wait until all the pods are ready:
```bash
kubectl wait pods --for=condition=Ready --all -n falco
```{{exec}}
