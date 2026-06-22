# zabbix-capacity-adaptation

Use for high I/O, slow Zabbix, queue delay, high NVPS, proxy backlog, DB pressure, cache pressure, and architecture expansion.

## Mission

Create phased scaling plans that smoothly expand capacity without unnecessary downtime.

## Diagnose by layer

- template/item load
- agent/proxy collection path
- proxy backlog
- Zabbix server process busy %
- preprocessing and LLD queues
- history/value/config cache pressure
- DB writes, locks, vacuum/housekeeping, WAL/binlog
- storage IOPS/await/iowait
- frontend/API/reporting load
- HA/DR requirement

## Phases

1. Baseline and freeze risky onboarding.
2. Remove avoidable load.
3. Tune cache/processes carefully.
4. Add/redistribute proxies.
5. Scale DB/storage.
6. Split frontend/API/reporting.
7. Add server HA for availability, not throughput.
