# `syna_tcm_v1_read` exact offline attestation

This attestation promotes stock ELF entry `00120eec` (`0x1a664`, 324 bytes) after exact AArch64 opcode, relocation, section-size and KCFI-presence comparison. The canonical Docker build reproduced the candidate module in two independent cycles. Joern strict source coverage and the two-cycle ASan/UBSan direct-source harness also passed.

Both stock and candidate have no valid KCFI preamble for this symbol; the exact object preserves the stock inline function-pointer CFI check. Hardware validation remains deferred.
