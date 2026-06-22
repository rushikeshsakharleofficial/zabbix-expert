# High I/O diagnosis

## Read-only checks

```bash
zabbix_server -V
zabbix_server -R diaginfo
zabbix_server -R ha_status
vmstat 1 5
iostat -xz 1 5
journalctl -u zabbix-server -n 200 --no-pager
```

## Inspect

Queue, internal process busy %, preprocessing queue, history/value cache, DB latency, slow queries, locks, WAL/binlog pressure, proxy backlog, and unsupported item noise.
