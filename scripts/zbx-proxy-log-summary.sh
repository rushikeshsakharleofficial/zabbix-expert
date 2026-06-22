#!/usr/bin/env bash
set -euo pipefail
LOG=${1:-/var/log/zabbix/zabbix_proxy.log}
grep -Ei '(failed|error|timeout|database|buffer|sync|cannot)' "$LOG" | tail -100 || true
