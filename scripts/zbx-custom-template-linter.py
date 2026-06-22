#!/usr/bin/env python3
import re, sys
bad=re.compile(r'(?i)system\.run|UserParameter|External check')
rc=0
for f in sys.argv[1:]:
    s=open(f, errors='replace').read()
    if bad.search(s):
        print(f'WARN {f}: shell-first pattern detected')
        rc=1
    else:
        print(f'OK {f}: no blockers or warnings detected')
sys.exit(rc)
