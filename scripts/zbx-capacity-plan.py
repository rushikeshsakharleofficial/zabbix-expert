#!/usr/bin/env python3
import json, sys

data=json.load(open(sys.argv[1]))
print('# Zabbix capacity adaptation recommendation')
for k,v in data.items():
    print(f'- {k}: {v}')
print('\n## Suggested path')
print('1. Baseline queue/process/cache/DB I/O')
print('2. Remove avoidable template load')
print('3. Add or redistribute proxies')
print('4. Scale DB/storage if write latency is high')
print('5. Split frontend/API/reporting if UI/API is slow')
