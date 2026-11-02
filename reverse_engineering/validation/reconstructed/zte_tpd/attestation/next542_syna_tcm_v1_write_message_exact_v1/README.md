# `syna_tcm_v1_write_message` exact offline attestation

This attestation promotes stock ELF entry `0011eeac` (`0x18624`, 2084 bytes) after exact AArch64 opcode, relocation, section-size and KCFI comparison. The canonical Docker build reproduced the candidate module in two independent cycles. Joern strict source coverage and the two-cycle ASan/UBSan direct-source harness also passed.

The exact assembly preserves all 521 stock instructions, including the CRC-table reference, direct call relocation and KCFI type ID `0x24203a8e`. The refreshed direct-source harness covers eight contracts in two ASan/UBSan Docker cycles, including payload-byte layout and the enable/disable IRQ callback cycle; its report is `host_harness_report_v3.json`. Hardware validation remains deferred; no Android device, firmware blob, power rail or physical touch hardware was exercised.
