#!/usr/bin/env python3
"""Redact common Zabbix secret patterns from stdin/files."""
import re
import sys

patterns = [
    (re.compile(r'(?i)(DBPassword\s*=\s*).+'), r'\1REDACTED'),
    (re.compile(r'(?i)(TLSPSKIdentity\s*=\s*).+'), r'\1REDACTED'),
    (re.compile(r'(?i)(TLSPSKFile\s*=\s*).+'), r'\1REDACTED'),
    (re.compile(r'(?i)(Authorization:\s*Bearer\s+)[A-Za-z0-9._\-]+'), r'\1REDACTED'),
    (re.compile(r'(?i)(SNMP community\s*[:=]\s*).+'), r'\1REDACTED'),
    (re.compile(r'(?i)(password\s*[:=]\s*)[^\s,;]+'), r'\1REDACTED'),
]


def redact(text: str) -> str:
    for rx, repl in patterns:
        text = rx.sub(repl, text)
    return text


if len(sys.argv) == 1:
    print(redact(sys.stdin.read()), end='')
else:
    for path in sys.argv[1:]:
        with open(path, errors='replace') as fh:
            print(redact(fh.read()), end='')
