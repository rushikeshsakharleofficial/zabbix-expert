# Zabbix security implementation playbook

## Goal

Harden Zabbix without breaking monitoring. This playbook uses phased changes, read-only audit, and rollback-first design.

## Phase 0: Inventory

Collect version, topology, DB engine, web server, proxies, agent mode, encryption mode, authentication method, API token owners, DB users, and secrets storage.

## Phase 1: Immediate risk reduction

- Disable or rotate unused API tokens.
- Remove secrets from scripts, media parameters, README files, templates, and global scripts.
- Verify Super admin count and create a break-glass account.
- Enforce HTTPS on frontend.
- Ensure audit logging is enabled and retained long enough for investigation.
- Lock config files containing DB passwords, TLS private keys, PSKs, and SNMP secrets.

## Phase 2: Identity hardening

- Move users into groups.
- Use custom roles instead of broad Admin/Super admin access.
- Enable MFA for all privileged groups.
- Use SAML/LDAP group mapping where available.
- Keep one tested break-glass Super admin protected with MFA and stored recovery process.

## Phase 3: Transport security

- Use TLS PSK for fast rollout to agents/proxies.
- Use certificates for stronger identity at scale or regulated environments.
- Use temporary `TLSAccept=unencrypted,psk` or `TLSAccept=unencrypted,cert` only during migration.
- After validation, enforce `TLSAccept=psk` or `TLSAccept=cert`.
- Protect PSK/private-key files with owner-only permissions.

## Phase 4: Database and secrets

- Separate DB owner from runtime DB users.
- Create minimal DB roles for server/proxy, frontend/API, backup, partitioning, and read-only reporting.
- Prefer vault macros for high-value credentials.
- Use secret macros for values that must remain in Zabbix but should not be visible.

## Phase 5: Web/frontend hardening

- Enforce HTTPS redirect.
- Enable HSTS after certificate/redirect validation.
- Enforce Secure and SameSite cookies based on application needs.
- Add CSP and preserve required sources for maps/Duo/widgets.
- Keep X-Frame-Options/sandboxing enabled unless exception is documented.
- Disable server signatures and default error/test pages.

## Phase 6: Continuous control

- Schedule audit review.
- Monitor configuration changes, API tokens, user/role changes, script/media/template changes, and encryption drift.
- Run periodic security posture checks.
