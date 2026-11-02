# Exact revalidation: `014_tpd_reset_fw_data_pos_and_size`

This package records the reproducible offline promotion of `tpd_reset_fw_data_pos_and_size` at stock entry `0x00107f84`.

- Docker canonical build: two cycles, identical candidate module SHA-256 `a3c6e0f637b526e088b8ca87b503105c1621dc68c242c5b6fa2dda444e0385f3`.
- AArch64: 7/7 instructions and 28/28 bytes, including the `tpd_cdev` relocation and descriptor store.
- KCFI: stock and candidate type ID `0xe5c47d60`, section `.text`, size 28 bytes.
- Joern: strict PASS, parse-clean, one-to-one Ghidra/source identity and no unresolved calls.
- Dedicated host ASan/UBSan in the Docker container: two reproducible cycles with three direct values, including zero, an ordinary position and `UINT32_MAX`.

This is an offline exact-function claim. Descriptor validity, firmware integration, smartphone, Android insertion and physical hardware behavior remain deferred.
