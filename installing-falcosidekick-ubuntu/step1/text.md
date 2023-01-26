The current environment has Falco already running as described in the
"Install Falco on Ubuntu" tutorial (you might need to wait a few seconds):
```bash
systemctl status falco
```{{exec}}

There are two main steps to install Falcosidekick:
- Change Falco output
- run Falcosidekick

### Change Falco output

Using the a text editor of your choice or the editor tab, update the
`/etc/falco/falco.yaml` file to have following settings:
```yaml
json_output: true

http_output:
  enabled: true
  url: http://localhost:2801
```

Restart Falco:
```bash
systemctl restart falco
```{{exec}}

### Run Falcosidekick

Go to [releases](https://github.com/falcosecurity/falcosidekick-ui/releases),
download the latest `amd64` version, and extract Falcosidekick binary:
```bash
wget https://github.com/falcosecurity/falcosidekick/releases/download/2.27.0/falcosidekick_2.27.0_linux_amd64.tar.gz
tar -zxf falcosidekick_2.27.0_linux_amd64.tar.gz
```{{exec}}

Set the `WEBUI_URL` environment varibale and execute the Falcosidekick binary:
```bash
WEBUI_URL=http://localhost:2802 ./falcosidekick
```{{exec}}

Falcosidekick output should like the following:
```output
2023/01/26 12:26:38 [INFO]  : Falco Sidekick version: 2.27.0
2023/01/26 12:26:38 [INFO]  : Enabled Outputs : [WebUI]
2023/01/26 12:26:38 [INFO]  : Falco Sidekick is up and listening on :2801
```
