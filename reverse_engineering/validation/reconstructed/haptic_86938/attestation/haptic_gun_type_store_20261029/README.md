# Haptic `gun_type_store` reconstruction

Target: stock `gun_type_store@0010d3ac`, 148 bytes, KCFI type `0x95c41a97`.

The handler parses an unsigned integer with base autodetection. A parse error is returned unchanged before locking. On success, it locks the mutex at `driver_data+0x248`, stores the 32-bit value at `driver_data-0x2c`, unlocks, and returns the input byte count.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. The candidate matches all 37 stock instructions and 148 bytes, including relocations to `kstrtouint`, `mutex_lock`, `mutex_unlock`, and `__stack_chk_fail`. Ghidra normalized C/P-Code and KCFI pass; the candidate KCFI type is `0x95c41a97`. Two clean Docker builds produced identical module SHA-256 `25c80116bc4b2e258d5f1a8d631af23def51a277a7e0241a9add54897bb81876` (3,310,744 bytes).

The module-level audit remains incomplete: no canonical reconstructed `.ko` is present, and vermagic, alias, and undefined-symbol parity checks fail. Promotion remains unauthorized; this is function-level static evidence and does not establish hardware behavior or full-driver equivalence.
