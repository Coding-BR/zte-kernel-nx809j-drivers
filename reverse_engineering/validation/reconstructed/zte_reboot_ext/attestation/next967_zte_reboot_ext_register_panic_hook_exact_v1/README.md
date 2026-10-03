# zte_reboot_ext register_panic_hook — offline exact attestation

Status: `CORE_GATES_PASS` for the static/offline protocol. This package is not a hardware-validation claim and does not independently authorize unrestricted promotion.

## Scope

- Driver: `zte_reboot_ext`
- Stock function: `register_panic_hook`
- Stock entry: `0x0010105c`
- Stock body: 92 bytes / 23 instructions
- Candidate source: `candidate_source.c`
- Stock module SHA-256: `1e5b8e9e91f304236802d52a316570f6649b8f504b58558b28909d48c62d910f`
- Candidate protocol module SHA-256: `67f1e229363e6b43c91ca3c1fc4a7f5f110088d4f62e6d26f63b57287152244d`

This target passed using the normal reconstructed C implementation. Its generated AArch64 body, relocations, section, symbol size and KCFI metadata match the stock function under the pinned Docker toolchain; no assembly island was required.

## Evidence

- `assembly/comparison.json`: exact instruction, relocation, section and symbol-size comparison passed.
- `kcfi/comparison.json`: KCFI type and symbol-size comparison passed.
- `docker/driver_audit.json` and `docker/driver_audit.md`: Docker rebuild evidence using the pinned engineering image/toolchain.
- `joern/joern_gate_report.json` and `joern/slices/`: scoped source and usage-slice evidence.
- `host_test_report.json`: reproducible Docker host tests passed.
- `hard_protocol_report.json`: authoritative core-gate result and input identity.
- `hard_protocol_plan.json`: reproducible protocol configuration.
- `input_manifest.json`: exact source, stock module, map, Ghidra export, job, Joern lock, Docker engineering root and runtime inputs.
- `reconstruction_map.json`: post-attestation map snapshot with this function marked `promoted_offline_exact`.

## Limitations

The evidence is static/offline plus a host harness. It does not prove physical device behavior, kernel-wide concurrency safety, sanitizer results, KMI compatibility, independent review, or hardware rollback behavior. Those remain separate gates listed in `promotion_decision.json`.
