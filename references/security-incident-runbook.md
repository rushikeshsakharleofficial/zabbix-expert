# Zabbix security incident runbook

## Token or credential exposure

1. Disable the exposed token or credential immediately.
2. Identify owner, integrations, and last use window.
3. Rotate the secret and update dependent integrations.
4. Review audit log for suspicious changes.
5. Search repositories/scripts/templates for exposed value fingerprints.
6. Add prevention rule to linter/review checklist.

## Suspected admin compromise

1. Preserve logs and audit records.
2. Disable the affected account; do not delete before evidence capture.
3. Rotate API tokens owned by the account.
4. Review user/role/group/script/media/template changes.
5. Force password reset and MFA re-enrollment for impacted groups.

## Agent/proxy credential compromise

1. Switch host/proxy to maintenance if needed.
2. Generate new unique credential and identity.
3. Update local config and frontend entry.
4. Restart component and validate encrypted checks.
5. Search logs for failed/rejected connections.

## Database credential compromise

1. Rotate DB password.
2. Revoke suspicious sessions.
3. Review DB grants and owner privileges.
4. Review audit log and DB logs.
5. Validate server/proxy/frontend reconnection.
