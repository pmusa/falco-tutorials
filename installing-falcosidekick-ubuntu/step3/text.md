> Click on `+` button to use another tab for this challenge.

### Generate a suspicious event

Run the following command to simulate a suspicious event:
```bash
cat /etc/shadow > /dev/null
```{{exec}}

Check the logs in the Falcosidekick tab.
The output should be similar to the following:
```output
2023/01/26 12:28:16 [INFO]  : WebUI - Post OK (200)
```
