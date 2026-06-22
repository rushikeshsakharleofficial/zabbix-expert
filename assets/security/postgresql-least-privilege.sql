-- PostgreSQL example: review against your Zabbix version and schema before use.
-- Run only in staging first and keep DB owner/DBA rollback access.

-- Example role layout:
-- zbx_owner: schema owner / upgrade role
-- zbx_srv: server/proxy runtime role
-- zbx_web: frontend/API runtime role
-- zbx_ro: read-only reporting role

-- CREATE ROLE zbx_ro LOGIN PASSWORD 'REDACTED';
-- GRANT CONNECT ON DATABASE zabbix TO zbx_ro;
-- GRANT USAGE ON SCHEMA public TO zbx_ro;
-- GRANT SELECT ON ALL TABLES IN SCHEMA public TO zbx_ro;
-- ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO zbx_ro;
