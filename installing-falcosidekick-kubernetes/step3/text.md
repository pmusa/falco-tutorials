Run the following command to look at Falcosidekick logs.
```bash
kubectl logs -l app.kubernetes.io/name=falcosidekick -n falco
```{{exec}}

The output should be similar to the following:
```output
2023/01/26 12:26:38 [INFO]  : Falco Sidekick version: 2.27.0
2023/01/26 12:26:38 [INFO]  : Enabled Outputs : [WebUI]
2023/01/26 12:26:38 [INFO]  : Falco Sidekick is up and listening on :2801
```

### Generate a suspicious event

Run the following command to simulate a suspicious event:
```bash
kubectl exec -it alpine -- sh -c "uptime"
```{{exec}}

Check the logs again:
```bash
kubectl logs -l app.kubernetes.io/name=falcosidekick -n falco | grep "OK"
```{{exec}}

The output should be similar to the following:
```output
2023/01/26 12:28:16 [INFO]  : WebUI - Post OK (200)
```
