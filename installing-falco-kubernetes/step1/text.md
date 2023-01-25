There are three main steps to install Falco on Kubernetes using Helm:
- Install kernel headers
- Add Falco chart repository
- Install the chart

### Install kernel headers

Run the following command to install the kernel headers:
```bash
apt-get -y install linux-headers-$(uname -r)
```{{exec}}

### Add Falco chart repository

Run the following command to add the `falcosecurity` charts repository:
```bash
helm repo add falcosecurity https://falcosecurity.github.io/charts
helm repo update
```{{exec}}

### Install the chart

Run the following command to create a namespace for Falco and install the Falco
chart:
```bash
kubectl create ns falco
helm install falco -n falco --set tty=true falcosecurity/falco
```{{exec}}
