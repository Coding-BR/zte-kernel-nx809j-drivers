# `syna_tcm_v1_read_message` — direct-source Docker attestation

This refresh extends the direct-source host harness from four to five cases by
exercising the read-buffer allocation failure path. The harness includes the
reconstructed source directly and uses deterministic mocks for transport,
managed memory, locks and callbacks.

The runner uses the pinned Clang `clang-r536225` in
`nubia-sm8850-kernel-builder:latest`, ASan/UBSan, `-Werror`, deterministic
seed, build-id disabled and path prefix mapping. It records harness and
driver-source SHA-256 values and requires identical binary hashes across two
cycles. Alignment sanitizer is disabled because the decompiled function uses
intentional raw offset accesses.

This remains semantic host evidence only. Continued-read and response
dispatch paths, exact AArch64 opcode/relocation identity, KCFI, whole-module
ABI and physical hardware remain independent gates.
