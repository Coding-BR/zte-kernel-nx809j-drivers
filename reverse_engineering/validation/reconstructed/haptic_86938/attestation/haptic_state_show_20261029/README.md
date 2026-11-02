# state_show microtask

Scope: the haptic sysfs state attribute reader.

- Stock entry: `0010a2a0`; stock and candidate bodies are 14 instructions.
- Both load the device `driver_data` pointer at byte offset `0x98`, read a 32-bit value at `driver_data - 0x68`, and format `state = %d\n` into a 4096-byte buffer with `snprintf`.
- Recovered callback prototype: `ssize_t state_show(struct device *, struct device_attribute *, char *)`; pinned Docker Clang probe and candidate match KCFI ID `0xae84bcd4`.
- Two clean Docker builds produced the same accumulated candidate module SHA-256: `fb4922d15f115199afe27210545d067c65356437c8782a167bf8ed33d7c103fe`.
- All eight function-scoped core gates pass: assembly/relocations, candidate Ghidra C/P-code, reproducible Docker build, input identity, Joern scope/slice, KCFI, and map identity.
- Strict assembly, normalized Ghidra C, and P-code operation-shape comparisons pass without a normalization fallback.
- Promotion remains unauthorized. The combined driver is incomplete, 153 stock functions remain `NOT_STARTED`, the stock/Docker vermagic differs, and hardware validation has not been performed.

See `signature_probe/` for the ABI probe and `core/` for final protocol artifacts.
