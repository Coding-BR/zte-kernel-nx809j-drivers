# `syna_dev_set_up_input_device` — direct-source host attestation

The pre-existing target-167 host report used an isolated contract model. This
additional evidence block includes the reconstructed source directly and
drives it with layout-compatible TCM memory plus deterministic stubs for the
input, managed-device, mutex and report-dispatcher APIs.

The 10 cases cover mode-disabled and zero-dimension early returns, cached
parameter short-circuiting, managed-device and allocation failures,
registration failure, dispatcher failure, successful input configuration,
replacement of an existing input device and slot-count reallocation.

The runner uses `nubia-sm8850-kernel-builder:latest` and
`clang-r536225`, executes two independent ASan/UBSan cycles with `-Werror`,
deterministic seed, build-id disabled and path prefix mapping, and records
both harness and reconstructed-source SHA-256 values. Equal binary hashes are
required.

This is semantic host evidence, not proof of Android input-core integration,
concurrency, exact AArch64 opcode/relocation identity, KCFI, whole-module
reproducibility or physical hardware behavior.
