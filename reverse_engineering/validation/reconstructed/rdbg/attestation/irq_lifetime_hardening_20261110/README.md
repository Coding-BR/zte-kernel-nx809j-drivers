# rdbg threaded IRQ lifetime hardening — 2026-11-10

## Result

The reconstructed `rdbg` candidate now releases its per-open threaded IRQ after SMQ initialization fails and during normal release. The release path calls `free_irq(irq, dev_id)` before destroying the queue and mutex, so the IRQ core removes the action and waits for an in-flight threaded handler. `device_opened` is cleared after teardown. The failure path uses the same `dev_id` passed to `request_threaded_irq`.

This is intentional hardening relative to stock. The map now classifies `rdbg_open` and `rdbg_release` as `HARDENED_STOCK_DEVIATION`; the six other function mappings remain offline-exact.

## Build and static evidence

- Canonical Docker validator: two clean builds, both SHA-256 `caeaecef9cb59d128114bb7b3fe01726580382dd05d41407cdd68d8d753fd7db` (782112 bytes).
- The versioned candidate matches the Docker rebuild. Kernel source/toolchain identity, target vermagic, AArch64 relocatable format, aliases, namespaces, and candidate runtime section content/layout pass.
- The only undefined-symbol delta from stock is `free_irq`. The pinned NX809J `Module.symvers` exports it (`0xdd0d6b2a`, `vmlinux`, `EXPORT_SYMBOL`), and both Docker builds completed against the pinned kernel. The generic audit deliberately reports `incomplete_or_failed` for `undefined_symbols_match`; that parity difference is expected and is not hidden.
- The strict stock assembly comparison fails for `rdbg_open` and `rdbg_release`, as expected for this hardening. The new candidate assembly is in [`candidate_assembly/`](candidate_assembly/), and the raw comparison is [`assembly_comparison.json`](assembly_comparison.json). The report is preserved as a deviation record, not presented as a pass.
- Docker audit: [`docker_final_audit.json`](docker_final_audit.json) and [`docker_final_audit.md`](docker_final_audit.md). Final source snapshot synchronization, including the updated status file: [`source_sync_final.json`](source_sync_final.json).

## Remaining risks and limits

- This batch did not fix the separate static finding that concurrent readers can race on consumer SMQ indices.
- Previously documented platform-driver/module teardown hazards and the remote firmware memory-order uncertainty remain open.
- No dedicated open/release host harness, KUnit/lockdep/KCSAN run, or NX809J test was performed. `adb devices -l` returned an empty device list. No candidate module was loaded and no smartphone action was triggered.
- Keep this candidate offline-only until those risks have been reviewed and a controlled runtime plan is available.

## Identities

- Stock module SHA-256: `05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12`.
- Hardened candidate SHA-256: `caeaecef9cb59d128114bb7b3fe01726580382dd05d41407cdd68d8d753fd7db`.
- Reconstruction map SHA-256: `21d3e1e5cfa355a1428d9a5044b42690b7678322abda59992d25f1ba67bea04a`.
- `rdbg_open.c` SHA-256: `174658b611b5b2c5c5d7480575a0b7f39c3fec6736d4d658096d366567769a9e`.
- `rdbg_release.c` SHA-256: `5ec99a5cf5ba989e7cb7c184f51e708c898e493ca57f11dcfb67ab2401032b56`.
- Pinned kernel commit: `3356b35306d35d5a480e3b63df1a9f065b5d9f55`; target manifest and module symvers identities passed the Docker audit.
