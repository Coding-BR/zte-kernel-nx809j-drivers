# Exact revalidation: `012_tp_alloc_tp_firmware_data`

This package records the reproducible offline promotion of `tp_alloc_tp_firmware_data` at stock entry `0x00107d54`.

- Docker canonical build: two cycles, identical candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 88/88 instructions and 352/352 bytes, including allocator, logging and cleanup relocations.
- KCFI: stock and candidate type ID `0xcdde824b`, section `.text`, size 352 bytes.
- Joern: strict PASS, parse-clean, one-to-one Ghidra/source identity and no unresolved calls.
- Dedicated host ASan/UBSan in the Docker container: two reproducible cycles with four direct cases per cycle, covering success, replacement, descriptor allocation failure and data allocation failure.

This is an offline exact-function claim. The harness uses deterministic allocator/memory stubs; kernel allocator integration, smartphone, firmware and physical hardware behavior remain deferred.
