There are three main steps to install Falco on Ubuntu:
- Set up the package repository
- Install kernel headers
- Run Falco

### Set up the package repository

Add Falco repository key to allow the package verification when installing it.
```bash
curl -s https://falco.org/repo/falcosecurity-packages.asc | apt-key add -
```{{exec}}

Add Falco repository. This is where Falco package is located.
```bash
echo "deb https://download.falco.org/packages/deb stable main" | \
tee /etc/apt/sources.list.d/falcosecurity.list
```{{exec}}

Read the repository contents
```bash
apt-get update
```{{exec}}

### Install kernel headers

Run the following command to install the kernel headers:
```bash
apt-get -y install linux-headers-$(uname -r)
```{{exec}}

### Install Falco

Install the latest Falco version:
```plain
apt-get install -y falco
```{{exec}}

After installing Falco, it will probably be running.
However, in some cases you need to start it manually:
```bash
systemctl start falco
```{{exec}}
