# Haptic `bullet_nr_store` reconstruction

Target: stock `bullet_nr_store@0010d480`, 148 bytes, KCFI type `0x95c41a97`.

The handler parses an unsigned integer with base autodetection. A parse error returns unchanged before locking. On success it locks the mutex at `driver_data+0x248`, writes the 32-bit value at `driver_data-0x28`, unlocks, and returns the input count.

`core_v1/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. The candidate matches all 37 instructions and 148 bytes, with matching relocations. Ghidra normalized C/P-Code passes; KCFI type `0x95c41a97` matches stock. Two clean Docker builds produced module SHA-256 `924371e9d3c1fe91a027aec5e39953077319b8935199e1a74d26c7a9ae55e3cc` (3,372,232 bytes).

The module-level audit remains incomplete: no canonical reconstructed `.ko` is present, and vermagic, alias, and undefined-symbol parity checks fail. Promotion remains unauthorized; this is function-level static evidence and does not establish hardware behavior or full-driver equivalence.
