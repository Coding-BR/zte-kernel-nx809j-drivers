# syna_dev_suspend — offline exact attestation

This attestation covers microtask 164 at stock entry `0011337c`. The canonical module was built in two independent Docker cycles. The exact AArch64 object matches the preserved stock function at 392 bytes and 98 instructions, including relocations, printk formats and KCFI type ID `0x2a703c0b`.

The host contract harness covers six inactive, low-power, normal-sleep, skip-sleep and error-propagation cases under ASan/UBSan in two reproducible cycles. Hardware and Android power-management integration remain deferred.
