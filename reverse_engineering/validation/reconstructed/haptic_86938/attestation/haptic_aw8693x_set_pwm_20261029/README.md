# Haptic `aw8693x_set_pwm` reconstruction

Target: stock `aw8693x_set_pwm@00104694`, 164 bytes, with KCFI type ID `0x1d0adf6e`.

The function maps modes 0, 1, 2, and 3 to values `0x20`, `0`, `0x40`, and `0x60`. Valid modes call `i2c_w_bits(haptic, 0x46, 0xffffff9f, value)` and ignore its return. Other values log the stock error and do not access the bus.

`protocol_core_v9/hard_protocol_report.json` records `CORE_GATES_PASS`; all eight automated core gates pass. Stock and candidate match all 41 AArch64 instructions, 164 bytes, and relocations. Ghidra C/P-Code, KCFI, and both Joern gates pass. Two clean Docker cycles produced the same candidate module SHA-256 `b5bda49361ec8a5d928115bcf40aa8238eb17766a9f70410d2764c8bed486cc7` (3,604,808 bytes).

The source keeps the small mode-dispatch and argument-layout sequence in an AArch64 inline-assembly island because equivalent C layouts were reordered by the pinned compiler. The call to `i2c_w_bits` remains a typed C call, and invalid-mode logging remains C, preserving the dependency for Joern and the call signature for KCFI/Ghidra checks.

The full-driver audit remains incomplete: 80 of 160 stock functions are unmapped, and full-module vermagic, alias, and undefined-symbol parity checks fail. Promotion remains unauthorized. Independent semantic review remains open, so the reconstruction map keeps `semantic_equivalence` as `NOT_ESTABLISHED`. The automated function-level static gates do not establish hardware behavior or whole-driver equivalence.
