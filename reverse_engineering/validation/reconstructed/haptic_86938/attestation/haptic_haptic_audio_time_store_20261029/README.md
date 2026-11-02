# Haptic `haptic_audio_time_store` reconstruction

Target: stock `haptic_audio_time_store@0010d2d8`, 148 bytes, KCFI type `0x95c41a97`.

The handler scans the input with `"%d %d"`. It writes the two 32-bit values at `driver_data+0x430` and `driver_data+0x434` only when `sscanf` returns exactly two conversions. Every normal path returns the original input count. The stock body takes no mutex.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. The candidate matches all 37 instructions and 148 bytes with the same relocations. Ghidra C/P-Code and KCFI pass; the type id is `0x95c41a97`. Two clean Docker builds produced identical module SHA-256 `cc2fcd71ae6c39081593937ef387c9914da3cc1aa1abfc26d089416f8357ae2d` (3,451,216 bytes).

The module-level audit remains incomplete: no canonical reconstructed `.ko` is present, and vermagic, alias, and undefined-symbol parity checks fail. Promotion remains unauthorized. This is function-level static evidence and makes no hardware-behavior or full-driver-equivalence claim.
