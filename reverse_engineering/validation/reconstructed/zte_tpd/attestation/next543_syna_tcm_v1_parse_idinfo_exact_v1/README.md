# `syna_tcm_v1_parse_idinfo` exact offline attestation

This attestation promotes stock ELF entry `0011f6d0` (`0x18e48`, 188 bytes) after exact AArch64 opcode, relocation, section-size and KCFI-presence comparison. The canonical Docker build reproduced the candidate module in two independent cycles. Joern strict source coverage and the two-cycle ASan/UBSan direct-source harness also passed.

Both stock and candidate have no valid KCFI preamble for this symbol, with matching `.text` section and 188-byte symbol size. Hardware validation remains deferred.
