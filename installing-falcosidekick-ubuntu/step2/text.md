There are two main steps to install Falcosidekick-UI:
- run Redis
- run Falcosidekick-UI

> Click on the + button to use another terminal for this challenge.

### Run Redis

Falcosidekick-UI uses Redis to store and search data.
Install Redis with the RediSearch:
```bash
docker run -d --rm -p 6379:6379 --name redis redis/redis-stack-server:latest
```{{exec}}

### Run Falcosidekick-UI

Go to [releases](https://github.com/falcosecurity/falcosidekick-ui/releases),
download the latest `amd64` version, and extract Falcosidekick binary:
```bash
wget https://github.com/falcosecurity/falcosidekick-ui/releases/download/v2.1.0/falcosidekick-ui_2.1.0_linux_amd64.tar.gz
tar -zxf falcosidekick-ui_2.1.0_linux_amd64.tar.gz
```{{exec}}

Execute the Falcosidekick-UI binary:
```bash
./falcosidekick-ui
```{{exec}}

Falcosidekick-UI output should look like the following:
```output

```
