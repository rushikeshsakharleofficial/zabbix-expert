# TLS certificate and pre-shared-key rollout

## Decision

Use pre-shared-key mode for simpler staged rollout. Use certificate mode when the environment needs centralized PKI, renewal tracking, and stronger host identity management.

## Safe staged migration

1. Inventory current host/proxy encryption mode.
2. Create one unique credential/identity per host or proxy; do not reuse a single shared value across the fleet.
3. Store credential/key files with owner-only permissions.
4. Temporarily allow both old and new transport modes during migration.
5. Validate active and passive checks.
6. Enforce encrypted-only transport after validation.

## Agent example

```ini
TLSAccept=unencrypted,psk
TLSConnect=psk
TLSPSKIdentity=host-unique-identity
TLSPSKFile=/etc/zabbix/zabbix_agent2.psk
```

After validation:

```ini
TLSAccept=psk
TLSConnect=psk
```

## Certificate migration

1. Create CA and per-component certificates.
2. Set CA, certificate, and key file paths.
3. Validate with test checks.
4. Enforce certificate-only transport.
5. Track expiry and renewal.

## Rollback

Keep mixed accept for a short, documented window only. Roll back by allowing the previous transport mode, then investigate logs.
