# Security policy and implementation map

This repository contains a dedicated Zabbix security implementation layer.

## Main security skill

- `agents/zabbix-security-implementation.md` — routes hardening, audit, encrypted transport rollout, access control, API-token governance, secret macros/vaults, DB least privilege, frontend security, and incident response.

## Security references

- `references/security-implementation-playbook.md`
- `references/security-controls-matrix.md`
- `references/tls-psk-certificate-rollout.md`
- `references/frontend-auth-hardening.md`
- `references/db-least-privilege.md`
- `references/secrets-vault-macros.md`
- `references/audit-compliance-monitoring.md`
- `references/security-incident-runbook.md`

## Security assets

- `assets/security/nginx-zabbix-security.conf`
- `assets/security/apache-zabbix-security.conf`
- `assets/security/zabbix-agent2-psk-hardening.conf`
- `assets/security/zabbix-proxy-psk-hardening.conf`
- `assets/security/security-hardening-checklist.md`

## Safe scripts

- `scripts/zbx-security-audit.sh` — read-only Zabbix security posture snapshot.
- `scripts/zbx-redact-secrets.py` — redacts common Zabbix secret patterns from pasted configs/logs.

## Sensitive data rule

Do not share raw secrets, private keys, internal credentials, database passwords, tokens, or production-only identifiers in public issues. Redact evidence before sharing.
