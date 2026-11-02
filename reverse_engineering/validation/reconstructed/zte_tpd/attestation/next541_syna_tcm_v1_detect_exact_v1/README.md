# `syna_tcm_v1_detect` exact offline attestation

This attestation promotes stock ELF entry `0011e914` (`0x1808c`, 1236 bytes) after exact AArch64 opcode, relocation, section-size and KCFI comparison. The canonical Docker build reproduced the same module hash in two independent cycles. Joern strict source coverage and the two-cycle ASan/UBSan direct-source harness also passed.

Hardware validation remains deferred. The refreshed host harness covers nine deterministic startup and failure contracts using stubs for the managed device, startup callback, buffer allocation, message parsing and max-read/write setup.
