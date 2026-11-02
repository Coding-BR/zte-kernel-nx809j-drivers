# `aw8693x_auto_bst_enable` reconstruction attestation

## Stock behavior

The stock function at `00104b40` has a 52-byte AArch64 body and KCFI ID `0x1d0adf6e`. It stores the input byte at `haptic + 0x18`, then calls `i2c_w_bits(haptic, 0x08, 0xffffffef, value)`. The value is `0x10` for any nonzero input and zero for input zero; the helper return is discarded. The helper contract shows that this updates only bit 4 of register `0x08`.

The pinned Docker KCFI oracle tested 120 declarations. It matched `void (struct aw_haptic *, bool)`, `void (struct aw_haptic *, char)`, `void (struct aw_haptic *, unsigned char)`, and `void (struct aw_haptic *, u8)`. The candidate uses `u8` so the stored byte and nonzero test preserve the observed byte behavior.

## Candidate and evidence

The ordinary C implementation compiles to the exact stock 52-byte body and relocation. Fresh Ghidra normalized-C and P-Code comparisons pass, and the ASan/UBSan host harness rejects five seeded mutants. Candidate module SHA-256: `881f37a8a08ac6af385dec4eb44dd429db180d6a650457be941323167b8d2905`.

The original [hard-protocol report](../haptic_aw8693x_auto_bst_enable_20261029/core_runnerbound_v1/hard_protocol_report.json) passed all eight gates. After reconciling the reconstruction-map row and strengthening MAP_IDENTITY to require a nonempty source_file and candidate_under_static_validation status, the fresh [map-reconciled report](../haptic_aw8693x_auto_bst_enable_20261029/map_reconciled_core_v1/hard_protocol_report.json) also passes all eight automated gates, including assembly/relocations, candidate Ghidra C/P-Code, KCFI, Joern scoped analysis and slice, input/map identity, and two clean Docker builds. The [Ghidra comparison](../haptic_aw8693x_auto_bst_enable_20261029/core_runnerbound_v1/ghidra/semantic_comparison.json), [Joern report](../haptic_aw8693x_auto_bst_enable_20261029/core_runnerbound_v1/joern/joern_gate_report.json), and [Docker audit](../haptic_aw8693x_auto_bst_enable_20261029/core_runnerbound_v1/docker/driver_audit.json) retain details.

## Limits

The direct-call inventory has no incoming direct callsite, so an indirect callback path is not established here. Independent caller-type review, device-tree context, hardware runtime, and semantic promotion remain open. The map remains `candidate_under_static_validation`; semantic equivalence is `NOT_ESTABLISHED`.
