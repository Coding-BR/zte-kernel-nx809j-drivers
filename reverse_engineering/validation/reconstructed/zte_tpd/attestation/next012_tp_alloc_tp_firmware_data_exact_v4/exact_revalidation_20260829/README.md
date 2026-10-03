# Exact revalidation: `012_tp_alloc_tp_firmware_data`

This package records the reproducible promotion of `tp_alloc_tp_firmware_data` at stock entry `0x00107d54`.

- Metadata corrected from the stale 260 bytes to the authoritative 352-byte ELF symbol size.
- Docker canonical build: two cycles, identical module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 88/88 instructions and 352/352 bytes, including resolved relocations.
- KCFI: stock and candidate type ID `0xcdde824b`.
- Joern: strict PASS, zero parser problems, one-to-one Ghidra/source identity.
- `next13_firmware_harness`: 12/12 tests in each of two Docker ASan/UBSan cycles, including allocator success, replacement, `kmalloc` failure and `vmalloc` failure.

The host harness stubs kernel allocators and does not replace device or Android-hardware validation.
