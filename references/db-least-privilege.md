# Database least privilege

## Principles

- Keep DB owner separate from runtime users.
- Runtime Zabbix server/proxy and frontend/API users should not be schema owners.
- Use read-only DB users for custom dashboards/reporting.
- Backups should use backup-specific privileges.
- Upgrades and restores should run as owner/DBA only.

## PostgreSQL/TimescaleDB

- Revoke public create/all privileges on the database/schema.
- Use a dedicated Zabbix schema and search_path.
- Create separate server, web, backup, and reporting roles.
- Grant only required table and sequence privileges.
- TimescaleDB extension/upgrade operations may require owner privileges; do not grant owner rights to normal runtime users unless required and documented.

## MySQL/MariaDB

- Create separate runtime, web, backup, partitioning, and read-only roles.
- Grant only essential privileges.
- Keep restore/upgrade privileges with the database owner.
- Use host restrictions for DB accounts.
