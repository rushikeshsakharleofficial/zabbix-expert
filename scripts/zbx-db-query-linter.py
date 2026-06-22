#!/usr/bin/env python3
import re, sys
bad=re.compile(r'(?i)\b(INSERT|UPDATE|DELETE|DROP|ALTER|TRUNCATE|CREATE)\b|SELECT\s+\*\s+FROM')
rc=0
for f in sys.argv[1:]:
    s=open(f, errors='replace').read()
    if bad.search(s):
        print(f'WARN {f}: unsafe SQL pattern detected')
        rc=1
    else:
        print(f'OK {f}: no blockers or warnings detected')
sys.exit(rc)
