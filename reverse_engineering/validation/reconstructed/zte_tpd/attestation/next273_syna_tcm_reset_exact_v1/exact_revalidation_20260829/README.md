# `syna_tcm_reset` exact revalidation — 2026-08-29

The literal AArch64 reconstruction was integrated into a clean Docker Kbuild
snapshot and passed the full static protocol.

- Docker canonical build: 2/2 cycles passed; module SHA-256
  `54f0f217b3f309a7f29ca29d40122ff6fe62bf5148c91dafdef416099f909872`, size
  `12017680` bytes.
- AArch64 comparison: passed, 91 instructions and 364-byte symbol with equal
  opcodes and relocations against stock entry `0x001221ac`.
- KCFI: passed; both sides use type ID `0x627e4777` and 364-byte `.text`
  symbols.
- Direct host oracle: passed 4 cases in 2 deterministic ASan/UBSan cycles.
- Joern strict function gate: passed with the current reconstructed source.

The host oracle disables only alignment sanitizer because the recovered raw
callback layout intentionally reads the KCFI word at `function_pointer - 4`;
AddressSanitizer and the remaining UndefinedBehaviorSanitizer checks remain
enabled.

No smartphone, SPI, IRQ, MMIO, firmware-transport or module-loading test was
available, so this is an exact static reconstruction result, not hardware
readiness.
