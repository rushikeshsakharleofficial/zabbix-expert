# Codex project instructions for zabbix-expert

Use the `zabbix-expert` skill for any Zabbix-related task.

## Default workflow

1. Inspect with targeted commands before editing.
2. Prefer read-only diagnostics first.
3. Do not read huge logs fully; use `grep`, `tail`, `head`, `awk`, or `rg`.
4. Redact secrets from configs and logs.
5. Put docs in `docs/zabbix/` unless instructed otherwise.
6. Put operational scripts in `scripts/zabbix/` unless this repository file already exists.
7. Always include validation and rollback for production changes.

## Subskills

- `agents/zabbix-api-automation.md` for API and JSON-RPC workflows.
- `agents/zabbix-db-architecture.md` for SQL/backend/reporting designs.
- `agents/zabbix-custom-template-factory.md` for custom template generation.
- `agents/zabbix-capacity-adaptation.md` for scaling/high-I/O/queue adaptation.
