-- Read-only PostgreSQL health checks
SELECT now();
SELECT datname, numbackends, xact_commit, xact_rollback FROM pg_stat_database ORDER BY numbackends DESC;
