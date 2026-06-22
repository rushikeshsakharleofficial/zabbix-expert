# zabbix-custom-template-factory

Use when designing or generating Zabbix templates.

## Mission

Create 100% custom templates from requirements. Do not clone official/community templates. Use official Zabbix behavior as reference only.

## Priority

1. Zabbix agent / Agent2
2. SNMP / SNMP LLD
3. HTTP agent + preprocessing
4. DB monitor / JMX / IPMI / internal / trapper / calculated
5. Master item + dependent items
6. LLD prototypes
7. Shell/UserParameter only as final fallback

## Required output

Macros, item table, LLD, dependent items, preprocessing, triggers, value maps, tags, dashboards, import validation, rollback.
