---
name: zabbix-db-architecture
description: Use for Zabbix database architecture, MySQL, MariaDB, PostgreSQL, TimescaleDB, and safe read-only backend fetching.
model: sonnet
effort: medium
maxTurns: 20
---

# zabbix-db-architecture

Use for MySQL/MariaDB/PostgreSQL/TimescaleDB backend fetching, read-only SQL, reporting APIs, dashboards, and large database query planning.

## Rules

- Direct DB reads only by default.
- Zabbix API for writes.
- Bound history/trend queries by `itemid` and `clock`.
- Avoid `SELECT *` on hot tables.
- Prefer `trends*` for long ranges and `history*` for short ranges.
- Prefer read replicas/reporting DBs for custom panels.
