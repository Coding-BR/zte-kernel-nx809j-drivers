# Haptic `duration_show` reconstruction

Target: stock `duration_show@0010a2e8`, 124 bytes, with sysfs callback KCFI type ID `0xae84bcd4`.

The callback obtains the device driver data, checks the hrtimer at `driver_data + 0x288`, and displays zero when the timer is inactive. For an active timer it reads the remaining signed nanoseconds, divides by 1,000,000, and formats `duration = %lldms\n` into a 4096-byte buffer. It takes no lock, matching stock behavior.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. Stock and candidate match all 31 AArch64 instructions and 124 bytes, including relocations. Ghidra C/P-Code and KCFI pass. Two clean Docker builds produced candidate module SHA-256 `a19bbafacccee3c23339b0c696cee838f87246704353f43a544129c684b39ca3` (3,540,896 bytes).

The full-driver audit remains incomplete: 82 stock functions are still unmapped, and fresh-candidate, vermagic, alias, and undefined-symbol parity checks fail. Promotion remains unauthorized. This is function-level static evidence and makes no hardware-behavior or full-driver-equivalence claim.
