# `syna_tcm_v1_set_up_max_rw_size` — hash-bound direct-source attestation

This refresh keeps the existing seven-case direct-source oracle while replacing
the generic compiler invocation with the pinned Docker Clang toolchain. The
runner records the SHA-256 of both the harness and
`kernel_development/drivers/reconstructed/zte_tpd/syna_tcm_v1_set_up_max_rw_size.c`.

The cases cover invalid handle/protocol, read-limit selection, no host read
limit, write capping and already-applied values. Two independent Docker cycles
use ASan/UBSan, `-Werror`, deterministic seed, build-id disabled and path
prefix mapping; equal binary hashes are required.

This is semantic host evidence. Exact AArch64 opcode/relocation identity,
KCFI, complete-module ABI and physical hardware remain separate gates.
