# `zlog_common` lifetime and synchronization risk audit — 2026-11-03

## Finding

The report worker can use a per-client record buffer after that buffer has been freed by concurrent unregistration.

`zlog_handle_work` copies the record into a separate event buffer while holding `client_lock`, then unlocks the client and calls `zlog_write_internal`. After the write returns, it frees the temporary event buffer and calls `zlog_reset_client(client)`. In that interval, `zlog_unregister_client` can acquire the same mutex, `kfree(client->record_buffer)`, set `record_length` to zero and `record_capacity` to `0x800`, then unlock. It does not clear `client->record_buffer`. The worker's later `zlog_reset_client` takes the mutex but calls `memset(client->record_buffer, 0, client->record_capacity)`, writing 2048 bytes through the freed pointer.

The mutex serializes the individual copy, free and reset sections. It does not cover the interval where `zlog_handle_work` is outside the lock in `zlog_write_internal`, which is what permits this interleaving. The affected client slot is in the driver's static global array, so this finding concerns the allocated record buffer rather than freeing the `zlog_client` object itself.

## Stock comparison

Ghidra stock pseudocode shows all three operations and their order. The saved stock/candidate comparison reports exact instruction, relocation, section and symbol-size equality for all three functions:

- `zlog_reset_client`: 47 instructions / 188 bytes.
- `zlog_unregister_client`: 78 instructions / 312 bytes.
- `zlog_handle_work`: 259 instructions / 1036 bytes.

The source, header, map and module also match the canonical Docker curated snapshot. This is therefore a potential OEM stock risk preserved by the exact reconstruction, not a mismatch introduced by reconstruction.

## Disposition and limits

This is a statically derived **potential write-after-free**, not a runtime-reproduced failure. No device access, module load/unload or hardware test was performed. The driver remains **INCOMPLETE**; independent human review and controlled hardware validation remain open.

The source and map were left unchanged to preserve exact-stock status. A correction needs to synchronize the in-flight report worker with buffer release and ensure the worker cannot touch a freed or newly replaced buffer after dropping `client_lock`. Merely setting the pointer to `NULL` or relying on `cancel_delayed_work` is not enough. Any hardening deviation must be rebuilt against the canonical Docker workspace and reviewed before promotion.

See [`lifetime_sync_risk_audit.json`](lifetime_sync_risk_audit.json) for evidence hashes and the exact interleaving.
