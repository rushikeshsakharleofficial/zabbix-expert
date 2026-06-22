# Zabbix security hardening checklist

## Transport

- [ ] Frontend served only over HTTPS.
- [ ] HSTS enabled after redirect validation.
- [ ] Agent/proxy encryption enabled or migration window documented.
- [ ] Credential/key files have restrictive ownership and permissions.

## Identity

- [ ] MFA enabled for privileged users.
- [ ] Super admin access limited and documented.
- [ ] Break-glass account exists and is tested.
- [ ] Stale users disabled.

## API

- [ ] Tokens mapped to service owners.
- [ ] Tokens have expiry unless approved.
- [ ] Lost/exposed tokens regenerated.
- [ ] Automation users have minimal roles.

## Secrets

- [ ] Secret text or vault macros used for sensitive values.
- [ ] No secrets in scripts/templates/global scripts/docs.
- [ ] No broad reuse of a single transport credential.

## Database

- [ ] DB owner separated from runtime accounts.
- [ ] Reporting uses read-only user/replica.
- [ ] Backups use backup-specific role.

## Audit

- [ ] Audit log enabled.
- [ ] Retention matches incident response needs.
- [ ] Token/user/role/template/script/media changes reviewed.
