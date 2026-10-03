# Exact attestation: `goodixfp_drm_get_pannel`

Target: `goodixfp_drm_get_pannel@0x00101c64`. The stock body is 336 bytes and 84 AArch64 instructions.

The reconstruction preserves the stack-canary path, null-device return `-ENODEV`, count-result preservation for missing panel phandles, per-iteration `struct of_phandle_args` zeroing, `__of_parse_phandle_with_args` call, `IS_ERR`-only panel acceptance, global panel store, success/failure return values, and fixed log levels and strings. Ghidra stock pseudocode and P-Code were used to recover the exact API and control-flow behavior.

Validation result: `CORE_GATES_PASS`. AArch64 instructions and relocations, input identity, Joern, KCFI exception handling, two clean Docker builds, and the host harness passed reproducibly. Stock and candidate both report `NO_VALID_KCFI_PREAMBLE` for this direct helper.

This is offline/static evidence only. The Docker adapter retains its independent acquisition-chain limitation when stock/Ghidra inputs are not copied into the run root. No hardware-execution or 100% equivalence claim is made.
