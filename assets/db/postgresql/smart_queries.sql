-- PostgreSQL read-only Zabbix backend fetching examples.

SELECT h.hostid, h.host, i.itemid, i.name, i.key_, i.value_type
FROM hosts h
JOIN items i ON i.hostid = h.hostid
WHERE h.status = 0 AND i.status = 0
ORDER BY h.host, i.name
LIMIT :limit;

SELECT clock, value
FROM history_uint
WHERE itemid = :itemid AND clock >= :clock_from AND clock < :clock_to
ORDER BY clock ASC
LIMIT :limit;

SELECT clock, value_min, value_avg, value_max
FROM trends_uint
WHERE itemid = :itemid AND clock >= :clock_from AND clock < :clock_to
ORDER BY clock ASC;
