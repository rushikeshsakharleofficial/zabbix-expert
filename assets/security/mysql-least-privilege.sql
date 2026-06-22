-- MySQL/MariaDB example: review against your Zabbix version before use.
-- Run only in staging first and keep DB owner/DBA rollback access.

-- Example role layout:
-- zbx_srv: server/proxy runtime role
-- zbx_web: frontend/API runtime role
-- zbx_ro: read-only reporting role

-- CREATE ROLE zbx_ro;
-- GRANT SELECT ON zabbix.* TO zbx_ro;
-- CREATE USER 'zbx_ro'@'10.%' IDENTIFIED BY 'REDACTED';
-- GRANT zbx_ro TO 'zbx_ro'@'10.%';
-- SET DEFAULT ROLE zbx_ro TO 'zbx_ro'@'10.%';
