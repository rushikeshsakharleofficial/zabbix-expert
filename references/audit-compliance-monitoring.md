# Audit and compliance monitoring

## Audit log policy

- Keep audit logging enabled.
- Log system actions when discovery/autoregistration changes are security-relevant.
- Retain records long enough for incident response and compliance.
- Review privileged changes weekly or after incidents.

## Watch list

- Super admin login and role changes
- API token creation/regeneration/disable events
- User role and user group changes
- Global script changes
- Media type/webhook changes
- Template imports and mass updates
- Host/proxy encryption changes
- Autoregistration actions
- Authentication/MFA/SAML/LDAP changes

## Incident evidence

Export audit logs, relevant frontend logs, web server access/error logs, Zabbix server/proxy logs, and API token inventory.
