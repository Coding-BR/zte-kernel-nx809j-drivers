# `syna_dev_process_unexpected_reset` — direct-source host attestation

This block strengthens the existing target-168 contract test by compiling the
reconstructed function directly from
`kernel_development/drivers/reconstructed/zte_tpd/syna_dev_process_unexpected_reset.c`.
The test remains offline and uses the Docker image
`nubia-sm8850-kernel-builder:latest` with Clang `clang-r536225`.

The 10 assertions cover:

- null context and `-EINVAL` logging;
- inactive mode with no side effects;
- active mode with a missing workqueue;
- first unexpected reset, including flag setting, CPU 32 and work offset;
- duplicate reset suppression and its log side effect.

The runner builds and executes two independent cycles with ASan/UBSan,
`-Werror`, deterministic seed, build-id disabled and path prefix mapping. The
report records both the harness hash and the reconstructed driver-source hash;
the binary hashes must match between cycles.

This is semantic host evidence, not proof of AArch64 instruction/relocation
identity, KCFI compatibility, concurrency behavior in a real kernel, or
hardware behavior. Those gates remain independent.
