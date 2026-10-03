# zte_reboot_ext fill_nvmem_buf — offline exact attestation

Status: `CORE_GATES_PASS` for the static/offline protocol. This package is not a hardware-validation claim and does not independently authorize unrestricted promotion.

## Scope

- Driver: `zte_reboot_ext`
- Stock function: `fill_nvmem_buf`
- Stock entry: `0x00100554`
- Stock body: 252 bytes / 63 instructions
- Candidate source: `candidate_source.c`
- Stock module SHA-256: `1e5b8e9e91f304236802d52a316570f6649b8f504b58558b28909d48c62d910f`
- Candidate protocol module SHA-256: `61a4873ee09ec6e23d84b7bf8a0e1ce855160aef584b2933f374820bee10920a`

The source keeps a readable C model as `fill_nvmem_buf_model` for host and Joern analysis and emits an AArch64 assembly island for the target helper. The island preserves the stock instruction body, KCFI preamble and external-call relocations. The host build maps `fill_nvmem_buf` to the C model through `ZTE_REBOOT_EXT_HOST_TEST`; the kernel/Docker build selects the target assembly island.

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
