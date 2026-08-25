# `syna_tcm_v1_read_message` exact offline attestation

This attestation promotes stock ELF entry `0011f838` (`0x18fb0`, 5484 bytes) after exact AArch64 opcode, relocation, section-size and KCFI comparison. The canonical Docker build reproduced the candidate module in two independent cycles. Joern strict source coverage and the two-cycle ASan/UBSan direct-source harness also passed.

The exact object preserves all 1371 stock instructions, including direct calls to `syna_tcm_v1_read`, `syna_tcm_v1_parse_idinfo` and `syna_tcm_buf_unlock`, with KCFI type ID `0xe10dda21`. Hardware validation remains deferred.
