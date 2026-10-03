# next325: `string_change`

This attestation records the typed, host-testable reconstruction of stock entry
`0x0012aecc`. The implementation follows the Ghidra control flow for the two
delimiter phases, the hexadecimal prefix, four decimal coordinates, and the
rotation-specific eight-byte coordinate record.

## Result

- Host runner: **PASS**, two identical Docker ASan/UBSan runs, 7 cases.
- Joern strict: **PASS**, one mapped function, 266 calls, 34 control
  structures, zero unresolved calls and zero parser problems.
- AArch64 syntax and kernel translation-unit compile: **PASS**.
- Whole-module `.ko`, final KCFI and exact assembly parity: **BLOCKED**.

The isolated candidate symbol is 1704 bytes versus 1404 bytes in stock, so this
function is not promoted as a 100% reconstruction. Joern also reports seven
high-severity lifetime findings around allocation/free paths; they remain
review items until the final module and ownership model are validated.

The complete module build is currently blocked by pre-existing conflicts in
`syna_tcm_erase_mtp_data.c` and `syna_tcm_buf_copy_2`/
`syna_tcm_func_base_unit.c`. Those unrelated files were not changed by this
microtask. No smartphone test was performed.
