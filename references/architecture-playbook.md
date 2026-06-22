# Architecture playbook

## Small
Single server/frontend/DB or simple split DB. Backups matter more than HA.

## Medium
Dedicated DB, dedicated Zabbix server, optional load-balanced frontends, proxies for remote networks.

## Large
Zabbix server HA, dedicated highly available PostgreSQL/TimescaleDB, frontends behind LB, proxies near monitored assets, strict template governance, automation via API/Git.

## Multi-region
Use regional proxies for collection. Keep one primary Zabbix control plane unless designing DR. Separate frontend HA, server HA, DB HA, and proxy placement.
