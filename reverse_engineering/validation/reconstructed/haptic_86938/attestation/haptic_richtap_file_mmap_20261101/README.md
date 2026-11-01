# `richtap_file_mmap` reconstruction (2026-11-01)

The reconstructed callback is wired into `left_fops.mmap`. Protocol core v10 passes all seven required gates. The 248-byte, 62-instruction function body matches stock byte for byte, the KCFI type and size match, and two Docker builds produce the same module hash.

The alternative-table audit caught and fixed a missing live `ARM64_BTI` record at function offset `+0x1c`. The candidate now matches all four stock function-scoped entries: `ARM64_ALWAYS_SYSTEM` at `+0x18`, `ARM64_BTI` at `+0x1c`, `ARM64_MTE` at `+0x20`, and `ARM64_HAS_S1POE` at `+0x24`. The BTI, MTE, and S1POE replacement branches target the next instruction, preserving the stock no-op path. See `alternative_slot_audit.json`.

## Evidence

- `binary_body_equivalence.json`: body bytes, 248-byte size, 62 instructions, relocations, KCFI type `0x7de14acc`, and reproducible build.
- `protocol_core_v10/hard_protocol_report.json`: all required core gates pass.
- `protocol_core_v10/assembly/comparison.json` and `protocol_core_v10/kcfi/comparison.json`: function body, relocation, size, and KCFI comparisons.
- `protocol_core_v10/docker/driver_audit.json`: Docker build and whole-driver readiness audit.
- `richtap_misc_data_audit.json`: `left_fops.mmap` points to this callback; `unlocked_ioctl` remains unimplemented.

## Remaining limits

The full `haptic_86938` module remains `incomplete_or_failed`: the current curated `.ko` is absent, alias and undefined-symbol parity fail, and function traceability is incomplete. Promotion is not authorized. No hardware run or independent review was performed.
