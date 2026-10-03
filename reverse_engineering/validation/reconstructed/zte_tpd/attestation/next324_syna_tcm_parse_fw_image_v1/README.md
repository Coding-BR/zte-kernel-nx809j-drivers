# next324: `syna_tcm_parse_fw_image`

This attestation records the typed reconstruction of stock entry `0x0012ab6c`.
The Ghidra decompilation and P-Code establish a `0x310`-byte parsed-image
overlay, `0x20`-byte partition records, the `0x4818472b` image magic, the two
partition magics, and the `crc32_le(~0U, data, size)` checksum contract.

## Result

- Host harness: **PASS**, two identical ASan/UBSan runs, 24 assertions.
- Joern strict: **PASS**, one mapped function, 125 calls, 20 control structures,
  zero unresolved calls and zero parser problems.
- AArch64 syntax and kernel translation-unit compile: **PASS**.
- Whole-module `.ko`, final KCFI and exact assembly parity: **BLOCKED**.

The candidate body is 816 bytes while stock is 860 bytes. It is therefore not
promoted as a 100% reconstruction. The full module build is also blocked by
pre-existing conflicts in `syna_tcm_erase_mtp_data.c` and
`syna_tcm_buf_copy_2`/`syna_tcm_func_base_unit.c`; those files were not changed
by this microtask.

No smartphone test was performed. Hardware validation remains deferred until
the offline gates are complete.
