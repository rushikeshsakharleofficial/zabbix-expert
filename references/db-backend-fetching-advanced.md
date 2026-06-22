# Advanced DB backend fetching

Use direct DB reads only for analytics, reporting, and backend panels. Keep the primary DB dedicated to ingestion. For heavy dashboards, use read replicas, reporting tables, caching, or API batching.

History table map: float=`history`, unsigned=`history_uint`, character=`history_str`, log=`history_log`, text=`history_text`, binary=`history_bin`. Use `trends`/`trends_uint` for long-range numeric reporting.
