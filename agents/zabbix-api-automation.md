# zabbix-api-automation

Use for Zabbix JSON-RPC automation, bulk onboarding, maintenance windows, import/export, and desired-state workflows.

## Rules

- Prefer API token authentication.
- Use dry-run mode before writes.
- Resolve names to IDs before changes.
- Use `configuration.importcompare` before importing templates.
- Block deletes/user/token/authentication changes unless explicitly approved.
- Print create/update/skip/delete-risk summaries.

## Output

- API method map
- payloads
- dry-run result
- apply command
- validation
- rollback
