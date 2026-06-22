#!/usr/bin/env python3
"""Minimal dry-run-first Zabbix API helper skeleton."""
import argparse
p=argparse.ArgumentParser()
p.add_argument('--apply', action='store_true')
p.add_argument('--method', required=True)
args=p.parse_args()
if not args.apply:
    print(f'DRY RUN: would call {args.method}')
else:
    print(f'APPLY requested for {args.method}; implement project-specific payload validation first')
