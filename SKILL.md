---
name: zabbix-expert
description: Master Zabbix skill for Claude Code and Codex. Use for Zabbix architecture, scaling, HA, proxies, API automation, DB backend fetching, templates, security, troubleshooting, and operations.
version: 1.0.0
---

# zabbix-expert

Use this skill whenever a task involves Zabbix server, proxy, frontend, agent/agent2, templates, API automation, database queries, capacity, scaling, HA, or troubleshooting.

## Non-negotiable rules

1. Read-only diagnostics first.
2. Never expose secrets, PSKs, API tokens, DB passwords, cookies, or private keys.
3. Never treat native Zabbix server HA as active/active throughput scaling; it is failover/availability.
4. Use Zabbix API for writes and direct DB access only for read-only analytics/reporting unless explicitly approved.
5. Do not recommend TimescaleDB for proxy DB.
6. Always include validation and rollback for production changes.
7. Size by NVPS, enabled items, process busy %, queues, cache pressure, DB write load, retention, and proxy backlog, not host count alone.

## Skill router

- Architecture/design: use `references/architecture-playbook.md` and `references/sizing-and-capacity.md`.
- API automation: use `agents/zabbix-api-automation.md` and `references/api-automation-advanced.md`.
- DB/backend fetching: use `agents/zabbix-db-architecture.md` and `references/db-backend-fetching-advanced.md`.
- Custom templates: use `agents/zabbix-custom-template-factory.md` and custom template references.
- Capacity/scaling/high I/O: use `agents/zabbix-capacity-adaptation.md` and adaptation references.
- Incidents: use `references/troubleshooting.md` and read-only scripts.

## Default output order

1. Direct recommendation.
2. Assumptions and evidence needed.
3. Architecture or root-cause reasoning.
4. Step-by-step implementation.
5. Commands/configs/scripts.
6. Validation.
7. Rollback.

## Safe diagnostics

Prefer targeted commands such as `zabbix_server -V`, `zabbix_server -R diaginfo`, `zabbix_server -R ha_status`, `systemctl status`, `journalctl -n`, and targeted `grep` over reading entire logs.
