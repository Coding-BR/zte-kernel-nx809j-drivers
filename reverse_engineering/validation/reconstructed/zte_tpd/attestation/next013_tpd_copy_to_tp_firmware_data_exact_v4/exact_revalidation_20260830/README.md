# Exact revalidation: `013_tpd_copy_to_tp_firmware_data`

This package records the reproducible offline promotion of `tpd_copy_to_tp_firmware_data` at stock entry `0x00107eb8`.

- Docker canonical build: two cycles, identical candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 50/50 instructions and 200/200 bytes, including the observed logging and copy-path relocations.
- KCFI: stock and candidate type ID `0x7bff871d`, section `.text`, size 200 bytes.
- Joern: strict PASS, parse-clean, one-to-one Ghidra/source identity and no unresolved calls.
- Dedicated host ASan/UBSan in the Docker container: two reproducible cycles with seven direct cases per cycle, covering error, boundary, complete, truncated, empty and old-offset paths.

This is an offline exact-function claim. Firmware transport, smartphone, Android insertion and physical hardware behavior remain deferred.
