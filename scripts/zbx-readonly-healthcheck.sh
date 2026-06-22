#!/usr/bin/env bash
set -euo pipefail

echo '## Zabbix readonly healthcheck'
date
hostname -f || hostname
command -v zabbix_server >/dev/null && zabbix_server -V || true
systemctl status zabbix-server --no-pager || true
journalctl -u zabbix-server -n 100 --no-pager || true
