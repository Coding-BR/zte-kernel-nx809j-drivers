# syna_dev_set_up_app_fw — offline exact attestation

This attestation covers microtask 162 at stock entry `00112c90`. The canonical module was built in two independent Docker cycles. The candidate assembly is materialized from an exact AArch64 object and matches the preserved stock function at 216 bytes, 54 instructions, relocations, printk formats and KCFI type ID `0xae20471c`.

The host contract harness covers six mode, transfer-size and error-propagation cases under ASan/UBSan in two reproducible cycles. Hardware, firmware transport and Android integration remain outside this offline gate.
