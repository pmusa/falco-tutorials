Run the following command to look at Falco logs.
```bash
kubectl logs -l app.kubernetes.io/name=falco -n falco
```{{exec}}

### Generate a suspicious event

Run the following command to simulate a suspicious event:
```bash
kubectl exec -it alpine -- sh -c "uptime"
```{{exec}}

Check the logs again to see the following notice:
```output
15:44:24.787469557: Notice A shell was spawned in a container with an attached terminal (user=<NA> user_loginuid=-1 k8s.ns=default k8s.pod=alpine container=07f3751ec492 shell=sh parent=runc cmdline=sh -c uptime pid=32402 terminal=34816 container_id=07f3751ec492 image=docker.io/library/alpine)
```
