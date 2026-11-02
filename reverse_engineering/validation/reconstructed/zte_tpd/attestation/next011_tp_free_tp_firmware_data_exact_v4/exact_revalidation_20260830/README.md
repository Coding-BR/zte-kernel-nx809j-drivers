# Exact revalidation: `011_tp_free_tp_firmware_data`

This package records the reproducible offline promotion of `tp_free_tp_firmware_data` at stock entry `0x00107cf0`.

- Docker canonical build: two cycles, identical candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 24/24 instructions and 96/96 bytes, including the `vfree` and `kfree` relocations.
- KCFI: stock and candidate type ID `0xe5c47d60`, section `.text`, size 96 bytes.
- Joern: strict PASS, parse-clean, one-to-one Ghidra/source identity and no unresolved calls.
- Dedicated host ASan/UBSan in the Docker container: two reproducible cycles with three direct cleanup cases per cycle, covering data present, data absent and descriptor absent.

This is an offline exact-function claim. Smartphone, firmware, Android insertion and physical hardware behavior remain deferred.
