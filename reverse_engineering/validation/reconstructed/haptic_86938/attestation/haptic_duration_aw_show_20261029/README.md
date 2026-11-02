# Haptic `duration_aw_show` reconstruction

Target: stock `duration_aw_show@0010d97c`, 124 bytes, with sysfs callback KCFI type ID `0xae84bcd4`.

This callback has the same stock instructions as `duration_show`. It checks the hrtimer at `driver_data + 0x288`, displays zero when inactive, and otherwise converts signed remaining nanoseconds to milliseconds before formatting `duration = %lldms\n` into a 4096-byte buffer. It takes no lock.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. Stock and candidate match all 31 AArch64 instructions and 124 bytes, including relocations. Ghidra C/P-Code and KCFI pass. Two clean Docker builds produced candidate module SHA-256 `77db84aca7ee3c7ef497f39b49045f15345c7e204f7a4efc84b3bdbe3386a4b6` (3,602,480 bytes).

The full-driver audit remains incomplete: 81 stock functions are still unmapped, and fresh-candidate, vermagic, alias, and undefined-symbol parity checks fail. Promotion remains unauthorized. This is function-level static evidence and makes no hardware-behavior or full-driver-equivalence claim.
