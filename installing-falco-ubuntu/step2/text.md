Verify that Falco is running correctly using the `systemctl` command:
```bash
systemctl status falco
```{{exec}}

The output should look like the following with the green color:
```output
● falco.service - Falco: Container Native Runtime Security
     Loaded: loaded (/lib/systemd/system/falco.service; enabled; vendor preset: enabled)
     Active: active (running) since Wed 2023-01-25 10:44:04 UTC; 12s ago
       Docs: https://falco.org/docs/
   Main PID: 26488 (falco)
      Tasks: 9 (limit: 2339)
     Memory: 15.1M
     CGroup: /system.slice/falco.service
             └─26488 /usr/bin/falco --pidfile=/var/run/falco.pid

Jan 25 10:44:04 ubuntu falco[26488]: Loading rules from file /etc/falco/falco_rules.local.yaml
Jan 25 10:44:04 ubuntu falco[26488]: Wed Jan 25 10:44:04 2023: Loading rules from file /etc/falco/falco_rules.local.yaml
Jan 25 10:44:04 ubuntu falco[26488]: The chosen syscall buffer dimension is: 8388608 bytes (8 MBs)
Jan 25 10:44:04 ubuntu falco[26488]: Wed Jan 25 10:44:04 2023: The chosen syscall buffer dimension is: 8388608 bytes (8 MBs)
Jan 25 10:44:04 ubuntu falco[26488]: Starting health webserver with threadiness 1, listening on port 8765
Jan 25 10:44:04 ubuntu falco[26488]: Wed Jan 25 10:44:04 2023: Starting health webserver with threadiness 1, listening on port 8765
Jan 25 10:44:04 ubuntu falco[26488]: Enabled event sources: syscall
Jan 25 10:44:04 ubuntu falco[26488]: Wed Jan 25 10:44:04 2023: Enabled event sources: syscall
Jan 25 10:44:04 ubuntu falco[26488]: Opening capture with Kernel module
Jan 25 10:44:04 ubuntu falco[26488]: Wed Jan 25 10:44:04 2023: Opening capture with Kernel module
```

Notice that it shows Falco service status and also the logs.
