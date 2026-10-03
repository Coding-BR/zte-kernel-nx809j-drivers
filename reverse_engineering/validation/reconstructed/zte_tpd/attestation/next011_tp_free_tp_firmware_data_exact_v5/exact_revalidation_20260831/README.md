# Exact revalidation: `011_tp_free_tp_firmware_data`

This package records the reproducible offline exact-function attestation of `tp_free_tp_firmware_data` at stock entry `0x00107cf0`.

- Docker canonical build: two cycles, identical candidate module SHA-256 `55e13b0eaf704397a21ba4d5fa21e31afedaec52e9dd728416f459f7e46dffce`.
- AArch64: 24/24 instructions and 96/96 bytes, including the `vfree` and `kfree` relocations.
- KCFI: stock and candidate type ID `0xe5c47d60`, section `.text`, size 96 bytes.
- Joern: strict PASS, parse-clean, one-to-one Ghidra/source identity and no unresolved calls.
- Ghidra semantic comparison: exact normalized decompiled-C and P-Code operation-shape match, with 96-byte function bodies.
- Dedicated host ASan/UBSan in the Docker container: two reproducible cycles with three direct cleanup cases per cycle, covering data present, data absent and descriptor absent.

This is an offline exact-function claim. Smartphone, firmware, Android insertion and physical hardware behavior remain deferred.
