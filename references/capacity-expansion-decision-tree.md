# Capacity expansion decision tree

1. Is the delay global or isolated to a proxy/item type?
2. Is DB/storage latency high?
3. Are pollers/trappers/preprocessors/history syncers busy?
4. Is value/history cache pressure high?
5. Is frontend/API slow while ingestion is normal?
6. Is the requirement availability rather than throughput?

Use the answer to choose template cleanup, proxy expansion, DB/storage expansion, frontend split, or HA/DR.
