# `syna_dev_process_touch_report` — hash-bound Docker host attestation

This refresh preserves the existing direct-source host harness for one of the
larger Syna paths and adds an explicit SHA-256 binding to the reconstructed
driver source. The harness includes
`kernel_development/drivers/reconstructed/zte_tpd/syna_dev_process_touch_report.c`
directly; it does not test an independently retyped model.

The five cases cover null context, invalid event, parser failure, the no-input
device early return and an empty report with balanced mutex operations and
release events. The runner compiles and executes two cycles in
`nubia-sm8850-kernel-builder:latest` using `clang-r536225`, ASan/UBSan,
`-Werror`, deterministic seed, build-id disabled and path prefix mapping. It
requires equal binary hashes and records both harness and driver-source hashes.

The evidence is semantic host evidence only. Contact iteration, gesture
delivery, large-area events, exact AArch64 opcode/relocation identity, KCFI,
concurrency in a real kernel and physical hardware remain separate gates.
