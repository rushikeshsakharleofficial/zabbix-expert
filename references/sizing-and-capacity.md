# Sizing and capacity

Size by NVPS, enabled items, item intervals, preprocessing cost, proxy backlog, DB write rate, retention, history/trend storage, and frontend/API use.

## Signals

- `zabbix[requiredperformance]`
- `zabbix[queue,<from>,<to>]`
- `zabbix[process,<type>,<mode>,busy]`
- `zabbix[wcache,history,pused]`
- `zabbix[vcache,buffer,pused]`
- DB disk await/iowait/locks/slow queries
