There are two main steps to install Falcosidekick-UI:
- run Redis
- run Falcosidekick-UI

> Click on the `+` button to use another terminal for this challenge.

### Run Redis

Falcosidekick-UI uses Redis to store and search data.
Install Redis with the RediSearch:
```bash
docker run -d --rm -p 6379:6379 --name redis redis/redis-stack-server:latest
```{{exec}}

### Run Falcosidekick-UI

Run Falcosidekick-UI:
```bash
docker run -d --network="host" --name falcosidekick-ui falcosecurity/falcosidekick-ui
```{{exec}}

Check if it is working aas expected:
```bash
docker logs falcosidekick-ui
```{{exec}}

Falcosidekick-UI output should look like the following:
```output
2023/01/26 15:56:12 [WARN] : Index does not exist
2023/01/26 15:56:12 [WARN] : Create Index
2023/01/26 15:56:12 [INFO] : Falcosidekick UI is listening on 0.0.0.0:2802
2023/01/26 15:56:12 [INFO] : log level is info
```
