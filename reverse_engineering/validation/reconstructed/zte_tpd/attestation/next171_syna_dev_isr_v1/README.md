# `syna_dev_isr` — hash-bound Docker host attestation

This refresh binds the direct-source interrupt-service-routine harness to the
current reconstructed source. The test includes
`kernel_development/drivers/reconstructed/zte_tpd/syna_dev_isr.c` directly
and covers PM resume timeout, bypass, GPIO mismatch, successful event fetch
and event-fetch failure.

The runner builds and executes two independent cycles in
`nubia-sm8850-kernel-builder:latest` with `clang-r536225`, ASan/UBSan,
`-Werror`, deterministic seed, build-id disabled and path prefix mapping. The
report records both harness and driver-source SHA-256 values and requires
equal binary hashes across cycles.

This is semantic host evidence only. Real interrupt-controller behavior,
completion scheduling, GPIO hardware, transport, exact AArch64 opcode or
relocation identity, KCFI and physical-device validation remain separate
gates.
