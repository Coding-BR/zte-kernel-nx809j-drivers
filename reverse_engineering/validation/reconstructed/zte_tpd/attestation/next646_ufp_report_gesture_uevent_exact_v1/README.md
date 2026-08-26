# next646 — `ufp_report_gesture_uevent`

This attestation promotes microtask 132 to `PROMOTED_OFFLINE_EXACT`.

- Exact AArch64 body: 57 instructions / 228 bytes.
- Relocation-resolved comparison: PASS with 14 relocations.
- KCFI: PASS, type ID `0xcf0d7fba`, symbol size 228.
- Canonical build: PASS in two cycles.
- Joern strict gate and supporting ASan/UBSan host harness: PASS.

The gate is offline and function-level. Android runtime and NX809J hardware behavior remain unverified.
