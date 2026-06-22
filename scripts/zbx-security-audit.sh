#!/usr/bin/env bash
set -euo pipefail

echo "# Zabbix security audit snapshot"
date
hostname -f 2>/dev/null || hostname

echo "## Versions"
command -v zabbix_server >/dev/null && zabbix_server -V | head -5 || true
command -v zabbix_proxy >/dev/null && zabbix_proxy -V | head -5 || true
command -v zabbix_agent2 >/dev/null && zabbix_agent2 -V | head -5 || true

echo "## Services"
for s in zabbix-server zabbix-proxy zabbix-agent2 zabbix-agent nginx httpd apache2 php-fpm postgresql mysqld mariadb; do
  systemctl is-active "$s" >/dev/null 2>&1 && systemctl status "$s" --no-pager -n 0 || true
done

echo "## Config permissions and security-relevant keys"
for f in /etc/zabbix/zabbix_server.conf /etc/zabbix/zabbix_proxy.conf /etc/zabbix/zabbix_agent2.conf /etc/zabbix/zabbix_agentd.conf; do
  [ -f "$f" ] || continue
  echo "### $f"
  stat -c '%U:%G %a %n' "$f" || true
  grep -E '^(TLS|DBHost|DBName|DBUser|Vault|User=|AllowKey|DenyKey|Server=|ServerActive=)' "$f" 2>/dev/null | sed -E 's/(DBPassword|TLSPSKFile|TLSKeyFile|VaultToken|VaultDBPassword)=.*/\1=REDACTED/' || true
done

echo "## Web security headers if ZBX_FRONTEND_URL is set"
if [ -n "${ZBX_FRONTEND_URL:-}" ]; then
  curl -k -I --max-time 10 "$ZBX_FRONTEND_URL" | grep -Ei 'strict-transport-security|content-security-policy|x-frame-options|set-cookie|server:|x-powered-by' || true
fi

echo "## Recent security-relevant log hints"
for l in /var/log/zabbix/zabbix_server.log /var/log/zabbix/zabbix_proxy.log /var/log/zabbix/zabbix_agent2.log /var/log/zabbix/zabbix_agentd.log; do
  [ -f "$l" ] || continue
  echo "### $l"
  grep -Ei 'tls|psk|certificate|denied|failed|authentication|unsupported|vault|secret|permission' "$l" | tail -50 || true
done
