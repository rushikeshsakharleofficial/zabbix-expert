# Secrets, vaults, and macros

## Rules

- Never place secrets in item names, trigger names, README files, scripts, or global scripts.
- Prefer Vault secret macros for high-value credentials.
- Use Secret text macros for credentials that must remain in Zabbix.
- Avoid placing secret macros in URL fields where masked values break runtime behavior.
- Ensure server/proxy encryption when vault secrets are synced to proxies.
- Use `secrets_reload` after rotating vault secrets when needed.

## Review targets

- SNMP communities and SNMPv3 credentials
- HTTP agent headers and body
- script parameters
- webhook/media tokens
- DB monitor connection strings
- API integration credentials
- credential/key file paths
