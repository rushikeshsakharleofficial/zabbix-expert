#!/usr/bin/env bash
set -euo pipefail

echo '## Capacity snapshot'
date
uptime
free -h
df -hT
command -v zabbix_server >/dev/null && zabbix_server -R diaginfo || true
command -v iostat >/dev/null && iostat -xz 1 5 || true
