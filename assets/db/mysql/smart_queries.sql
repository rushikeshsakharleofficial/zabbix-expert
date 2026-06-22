-- MySQL/MariaDB read-only Zabbix backend fetching examples.

SELECT h.hostid, h.host, i.itemid, i.name, i.key_, i.value_type
FROM hosts h
JOIN items i ON i.hostid = h.hostid
WHERE h.status = 0 AND i.status = 0
ORDER BY h.host, i.name
LIMIT ?;

SELECT clock, value
FROM history_uint
WHERE itemid = ? AND clock >= ? AND clock < ?
ORDER BY clock ASC
LIMIT ?;

SELECT clock, value_min, value_avg, value_max
FROM trends_uint
WHERE itemid = ? AND clock >= ? AND clock < ?
ORDER BY clock ASC;
