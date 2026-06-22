# Security controls matrix

| Domain | Control | Why it matters | Evidence |
|---|---|---|---|
| Transport | TLS PSK/cert on agents/proxies | Prevents clear-text monitoring traffic and spoofing | Host encryption column, config files, zabbix_get test |
| Frontend | HTTPS + HSTS | Prevents downgrade and cookie exposure | curl headers |
| Frontend | Secure/SameSite cookies | Reduces session exposure and CSRF risk | curl Set-Cookie headers |
| Frontend | CSP + X-Frame-Options | Reduces XSS/clickjacking exposure | curl headers, frontend config |
| Identity | MFA for privileged users | Reduces password compromise blast radius | Users → Authentication / groups |
| Identity | Least-privilege roles | Limits damage from compromised users | Role export/review |
| API | Token expiry + owner mapping | Enables accountable automation | API token inventory |
| Secrets | Secret/vault macros | Reduces credential disclosure | Macro type review |
| DB | Runtime role separation | Limits DB compromise impact | SQL role grants |
| Audit | Audit log enabled + retained | Enables investigation | Administration → Audit log settings |
| Agent | Non-root agent where possible | Reduces local privilege exposure | process user/systemd unit |
