# rdbg microtask: cleanup_module

Date: 2026-10-28. Function-scope static gates passed; the full driver remains INCOMPLETE.

## Source and Docker identity

- Stock module SHA-256: 05aaaf7e0da03cbf25343e32d9a0a7a965de6907eef342a1d9d4b0b55cd11a12.
- Functions checked: cleanup_module at 00101974 and on_interrupt_from at 00101600.
- The repository source and Docker curated snapshot match on all 10 files; see docker_source_sync.json.
- Docker builder image ID: sha256:25e32953c921a929b167364de58ca63d6454f44f1ef18616bd47f4e5d8f98390.
- Two clean Docker builds matched byte-for-byte. SHA-256: c929d561c6bcd106f105d8d84d111885a7498a8f1b503c97fef025bf6b99981f; size 283296 bytes.
- The candidate is preserved at docker_candidate_partial/rdbg_cleanup_test_candidate.ko; its SHA-256 is c929d561c6bcd106f105d8d84d111885a7498a8f1b503c97fef025bf6b99981f.

## Per-function gates

- Assembly and relocations: PASS for both functions. cleanup_module is 45 instructions and 180 bytes in .exit.text; on_interrupt_from is 9 instructions and 36 bytes in .text.
- KCFI: PASS. cleanup_module type ID 0xe5c47d60; on_interrupt_from type ID 0xd2f00be1. Sections and symbol sizes match stock.
- Ghidra: PASS for both functions. Body bytes and ordered P-Code shapes match. cleanup_module required the recorded named-data-address normalization for the cdev_del base expression; the underlying ELF data binding, body, and P-Code match.
- Joern 4.0.548 strict gate: PASS for 2/2 requested and mapped functions, with zero parse problems, unresolved calls, or CPG gaps.

## Limits

This is not a complete rdbg module. Six stock functions remain unmapped: rdbg_probe, rdbg_read, rdbg_write, rdbg_open, rdbg_release, and init_module. The Docker module audit remains INCOMPLETE and reports no static or hardware verification. The test-only callback anchor temporarily occupies .data+0xa0, which is the stock rdbg_driver slot; replace it with the real driver definition during full reconstruction. The candidate is not canonical and must not be promoted or loaded on a device. Independent review and hardware validation remain pending.

## Evidence index

- assembly_comparison.json and candidate_assembly/ — exact AArch64 function comparisons.
- kcfi_comparison.json and candidate_kcfi.json — stock/candidate KCFI comparisons.
- ghidra_comparison.json and candidate_ghidra/rdbg.ko/ — Ghidra C/P-Code evidence and normalization record.
- joern/ — strict gate report, input hashes, and source inventory.
- docker_driver_audit.json — full Docker module audit with its incomplete status.
- docker_source_sync.json — repository-to-Docker content hashes.
- ../../../../../../kernel_development/drivers/reconstructed/rdbg/reconstruction_map.json — two mapped functions and remaining work.



