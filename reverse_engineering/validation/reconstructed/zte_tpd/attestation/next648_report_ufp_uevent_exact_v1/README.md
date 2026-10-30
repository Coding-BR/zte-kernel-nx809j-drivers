# next648 — `report_ufp_uevent`

This attestation promotes microtask 133 to `PROMOTED_OFFLINE_EXACT`.

- Exact AArch64 body: 161 instructions / 644 bytes / 69 relocations.
- Relocation-resolved comparison against the compiled stock probe: PASS.
- KCFI: PASS, type ID `0x454a91cb`, symbol size 644.
- Canonical build: PASS in two reproducible cycles.
- Joern strict gate and supporting ASan/UBSan host harness: PASS.

The gate is offline and function-level. Android runtime and NX809J hardware behavior remain unverified.
