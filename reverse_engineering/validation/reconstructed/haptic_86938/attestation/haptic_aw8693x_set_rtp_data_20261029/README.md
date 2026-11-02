# `aw8693x_set_rtp_data` reconstruction attestation

## Stock behavior

The stock function at `00104c50` has a 40-byte body and KCFI type ID `0xc6a7b29b`. Its address is stored in `aw8693x_func_list` slot 26 at byte offset `0xd0`, confirmed by the stock `.rela.data` relocation. The wrapper calls `i2c_w_bytes(haptic, 0x32, data, length)` and ignores the helper's return value.

## Candidate and validation

The candidate preserves the `void (struct aw_haptic *, u8 *, u32)` signature, register argument, call target, and ignored return. The versioned candidate module is 2,533,352 bytes with SHA-256 `7d5d2079317d4db5bcdd1670c8851faaf448ef4dce46429ab255751d16199c32`. Its Ghidra export has the same module MD5 as the candidate bytes.

All eight function-scoped core gates pass: map identity, scoped Joern, Joern slice, two clean reproducible Docker builds, strict assembly and relocation comparison, KCFI, candidate Ghidra/P-Code comparison, and input identity. The protocol report also confirms runner hashes were unchanged during execution. The ASan/UBSan host harness passed its baseline and rejected four seeded mutants; the harness remains evidence for review rather than an automatic promotion gate.

The final report is [hard_protocol_report.json](core_runnerbound_v3/core_runnerbound/hard_protocol_report.json); the Docker build audit is [driver_audit.json](core_runnerbound_v3/core_runnerbound/docker/driver_audit.json). The pre-candidate stock packet and callback relocation are preserved in `pre_candidate/`.

## Status and limits

The reconstruction map remains `candidate_under_static_validation`, and semantic equivalence remains `NOT_ESTABLISHED`. Promotion is not authorized. Callback-table review, device-tree context, KMI types, a semantic counterexample search, independent review, and hardware runtime validation remain open. The complete haptic driver remains incomplete, with 121 stock functions still `NOT_STARTED`; whole-module vermagic and KMI parity are unresolved.
