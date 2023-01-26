The current environment has Falco already running as described in the "Install Falco on Kubernetes" tutorial:
```bash
kubectl get pods -n falco
```{{exec}}

Run the following command to install Falcosidekick:
```bash
helm upgrade falco -n falco --set tty=true falcosecurity/falco \
  --set falcosidekick.enabled=true \
  --set falcosidekick.webui.enabled=true
```{{exec}}

> In case Falco is not running, use `install` instead of `upgrade`.
