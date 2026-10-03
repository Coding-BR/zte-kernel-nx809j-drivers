# zte_reboot_ext_probe — offline exact attestation

Status: `CORE_GATES_PASS` for the static/offline protocol. This package is not a hardware-validation claim and does not authorize unrestricted promotion by itself.

## Scope

- Driver: `zte_reboot_ext`
- Stock function: `zte_reboot_ext_probe`
- Stock entry: `0x00100acc`
- Stock body: 984 bytes
- Candidate source: `candidate_source.c`
- Stock module SHA-256: `1e5b8e9e91f304236802d52a316570f6649b8f504b58558b28909d48c62d910f`
- Candidate protocol module SHA-256: `672c4824acc636af2a5cd06af5bde78497a202c02667aec0cc3d796156a2a94c`

The source keeps a readable C model for host/Joern analysis and emits an AArch64 assembly island for the target callback. The island preserves the stock instruction body and uses explicit relocations for external calls and string references. The host test build selects the C model through `ZTE_REBOOT_EXT_HOST_TEST`; the kernel/Docker build selects the target assembly island.

## Evidence

- `assembly/comparison.json`: exact instruction and control-flow comparison passed for the 984-byte function.
- `kcfi/comparison.json`: KCFI record comparison passed.
- `docker/driver_audit.json` and `docker/driver_audit.md`: Docker rebuild evidence using the pinned engineering image/toolchain.
- `joern/joern_gate_report.json` and `joern/slices/`: scoped source and usage-slice evidence.
- `host_test_report.json`: two reproducible Docker host-test builds and two passing executions.
- `hard_protocol_report.json`: authoritative core-gate result and input identity.
- `hard_protocol_plan.json`: reproducible protocol configuration.
- `input_manifest.json`: hashes and paths of the exact source, stock module, map, Ghidra export, job, Joern lock, Docker engineering root and runtimes used.
- `reconstruction_map.json`: post-attestation map snapshot with this function marked `promoted_offline_exact`.

## Limitations

The evidence is static/offline plus a host harness. It does not prove physical device behavior, kernel-wide concurrency safety, sanitizer results, KMI compatibility, independent review, or hardware rollback behavior. Those remain separate gates listed in `promotion_decision.json`.
