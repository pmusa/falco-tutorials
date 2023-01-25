There are different ways to access Falco logs in this installation:
- journalctl
- syslog

### journalctl

`jounalctl` allows us to interact with journald to inspect our services.
Run the following command to retrieve Falco logs:
```bash
journalctl -u falco
```{{exec}}

### syslog

Log messages describing Falco's activity are logged to syslog.
Run the following command to retrieve Falco logs:
```bash
cat /var/log/syslog | grep falco
```{{exec}}

### Generate a suspicious event

Run the following command to simulate a suspicious event:
```bash
cat /etc/shadow
```{{exec}}

Check the logs again with you preferred method to see the following warning:
```output
Jan 25 10:52:54 ubuntu falco: 10:52:54.144872253: Warning Sensitive file opened for reading by non-trusted program (user=root user_loginuid=-1 program=cat command=cat /etc/shadow pid=27550 file=/etc/shadow parent=bash gparent=kc-terminal ggparent=bash gggparent=systemd container_id=host image=<NA>)
```
