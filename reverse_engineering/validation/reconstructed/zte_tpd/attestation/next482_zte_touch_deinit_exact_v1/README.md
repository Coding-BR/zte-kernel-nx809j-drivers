# `zte_touch_deinit` exact offline attestation

This package records the reconstruction of stock function entry `0x0010e0d0` from the NX809J ZTE TPD module.

## Result

- AArch64 body: **94 instructions / 376 bytes**, exact opcode and symbol-relocation parity.
- Joern strict parser/dataflow gate: **PASS**, with no unresolved calls.
- Docker canonical build: **PASS** in two reproducible cycles.
- KCFI: **PASS_NOT_APPLICABLE**. Both stock and candidate have `NO_VALID_KCFI_PREAMBLE`; no type ID was fabricated.
- Host contract harness: **PASS** under ASan and UBSan in two cycles with identical binaries.
- Smartphone/hardware execution: **DEFERRED** by design.

## Evidence

`stock_decompiled.c` and `stock_pcode.jsonl` are the Ghidra exports. `candidate_source.c` is the readable semantic contract used by Joern and the host harness. `zte_touch_deinit_exact.S` is the exact AArch64 materialization used by the kernel module build. `assembly_comparison.json`, `kcfi_comparison.json`, `joern_final/`, `canonical_build_report.json` and `host_harness_report.json` are the machine-readable gates.

The harness checks early returns, teardown order, all delayed-work offsets, repeated buffer release/reset, workqueue and sysfs conditions, the guarded indirect callback, platform unregister, and the release flag.

This attestation is an offline reconstruction result, not a claim that the function has been validated on the physical phone. Hardware testing remains a separate controlled gate.
