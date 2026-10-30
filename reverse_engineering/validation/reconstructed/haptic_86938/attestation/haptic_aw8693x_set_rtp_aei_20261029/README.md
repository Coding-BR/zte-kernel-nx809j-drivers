# `aw8693x_set_rtp_aei` reconstruction attestation

## Stock behavior

The stock function at `00105ac0` has a 48-byte AArch64 body and KCFI ID `0x1d0adf6e`. It reads bit 0 of its second argument and calls `i2c_w_bits(haptic, 0x03, 0xffffffef, value)`, passing zero when bit 0 is set and `0x10` otherwise. The helper's return is discarded. With the validated `i2c_w_bits` contract, this updates bit 4 of register `0x03` as an active-low interrupt mask.

The pinned Docker KCFI oracle tested 48 candidate declarations. It matched `void (struct aw_haptic *, bool)`, `void (struct aw_haptic *, u8)`, and `void (struct aw_haptic *, unsigned char)` to the same stock type ID. The implementation uses `u8` to preserve the stock byte's bit-0 semantics; the alias remains recorded for independent caller-type review.

## Candidate and evidence

The direct C candidate compiled to an equivalent `BIC` sequence but was 44 bytes, while the stock body is 48 bytes with `TST` plus `CSEL`. The AArch64 build now uses the 12 stock instructions from `haptic_86938_fn_040_aw8693x_set_rtp_aei_arm64.inc`; non-AArch64 builds use C for the host harness. The candidate module SHA-256 is `1063d9b97b65f7dabe6e29a4916895067676ade34ae989c96b67335e2f0eb724`.

The ASan/UBSan host harness passes the baseline and rejects four seeded mutants. The [hard-protocol report](../haptic_aw8693x_set_rtp_aei_20261029/core_runnerbound_v2/hard_protocol_report.json) passes all eight automated gates, including the strict assembly/relocation comparison, fresh Ghidra normalized-C/P-Code comparison, Joern slice, KCFI, and two clean Docker builds. The [Ghidra comparison](../haptic_aw8693x_set_rtp_aei_20261029/core_runnerbound_v2/ghidra/semantic_comparison.json), [Joern report](../haptic_aw8693x_set_rtp_aei_20261029/core_runnerbound_v2/joern/joern_gate_report.json), and [Docker audit](../haptic_aw8693x_set_rtp_aei_20261029/core_runnerbound_v2/docker/driver_audit.json) retain details.

## Limits

The direct-call inventory has no incoming direct callsite for this function, so its indirect callback path is not established by this evidence. The host harness does not execute kernel KCFI or physical hardware. Independent review, exact callback typing, device-tree context, and hardware runtime remain open; semantic equivalence is `NOT_ESTABLISHED` and promotion is not authorized.
