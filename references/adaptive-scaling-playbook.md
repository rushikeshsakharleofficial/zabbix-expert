# Adaptive scaling playbook

## Scaling ladder

0. Observe and baseline.
1. Remove avoidable load: bad templates, unsupported items, too-short intervals.
2. Tune low-risk server parameters only after evidence.
3. Add or redistribute proxies near monitored resources.
4. Scale DB and storage I/O.
5. Split frontends/API/reporting consumers.
6. Add Zabbix server HA for availability.
7. Add DB HA/DR and multi-region recovery.
