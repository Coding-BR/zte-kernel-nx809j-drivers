# `syna_tcm_v1_set_up_max_rw_size` exact offline attestation

This attestation promotes stock ELF entry `00120da8` (`0x1a520`, 184 bytes) after exact AArch64 opcode, relocation, section-size and KCFI comparison. The canonical Docker build reproduced the candidate module in two independent cycles. Joern strict source coverage and the existing two-cycle ASan/UBSan direct-source harness also passed.

The exact object preserves all 46 stock instructions and KCFI type ID `0x04a0b1dd`. Hardware validation remains deferred.
