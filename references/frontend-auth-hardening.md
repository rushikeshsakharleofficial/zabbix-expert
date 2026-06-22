# Frontend authentication and web hardening

## Identity

- Prefer SAML/LDAP/HTTP auth integration for enterprise identity, with tested group mapping.
- Enable MFA for privileged groups.
- Keep limited break-glass Super admin access.
- Use custom roles and avoid broad Super admin assignment.
- Review disabled/stale users regularly.

## API tokens

- Assign every token to a specific service user.
- Set expiry date unless a documented exception exists.
- Use minimal role permissions for the token owner.
- Disable unused tokens first; delete after observation window.
- Rotate immediately if exposed.

## Web server

- Enforce HTTPS redirect.
- Enable HSTS only after HTTPS is stable.
- Enforce Secure cookies and a SameSite mode compatible with your dashboard/widget use.
- Add CSP; include only required external sources.
- Keep X-Frame-Options and iframe sandboxing unless a risk exception is approved.
- Disable server signatures, default error pages, and test pages.
