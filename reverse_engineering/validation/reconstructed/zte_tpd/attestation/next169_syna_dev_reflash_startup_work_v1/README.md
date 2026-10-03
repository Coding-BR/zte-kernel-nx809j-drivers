# `syna_dev_reflash_startup_work` — hash-bound Docker host attestation

This refresh binds the existing direct-source startup-reflash harness to the
current reconstructed source. The test includes
`kernel_development/drivers/reconstructed/zte_tpd/syna_dev_reflash_startup_work.c`
directly and exercises the disabled, reflash-failure, app-firmware-failure,
input-registration-failure and full-success paths.

The 11 assertions also check the 250-tick wait, recovered TCM offset, stage
short-circuiting, wakeup/relax balancing, firmware-class registration and the
configured fingerprint/report-rate arguments. The runner compiles and runs
two independent cycles in `nubia-sm8850-kernel-builder:latest` with
`clang-r536225`, ASan/UBSan, `-Werror`, deterministic seed, build-id disabled
and path prefix mapping. The report records harness and driver-source hashes
and requires equal binary hashes between cycles.

This is semantic host evidence only. Firmware transport, scheduler/workqueue
lifetime, PM-core integration, exact AArch64 opcode/relocation identity, KCFI
and physical hardware remain independent gates.
