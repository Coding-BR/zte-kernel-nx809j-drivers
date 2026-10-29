# Haptic trigger sysfs show microtask

`trig_show` at stock entry `00106818` formats three trigger records. The reconstructed wrapper reads the stock byte offsets from `device->driver_data`, emits each line through a bounded `snprintf`, and returns the accumulated character count. The format, argument order, byte offsets, and buffer bounds match the stock decompilation and AArch64 instructions.

The first strict run failed only `ASSEMBLY_RELOCATIONS`: all 73 instructions, symbol size, and candidate Ghidra P-Code matched, but a `static const` format array placed the literal in `.rodata` while the stock object used `.rodata.str1.1`. The source now passes identical string literals directly to `snprintf`, allowing Clang's string merging to reproduce the stock relocation section. The failed first-run report is retained under `core/` as diagnostic evidence.

The corrected run completed with `CORE_GATES_PASS`; all eight required gates passed, including exact assembly and relocation comparison, Ghidra P-Code, two-cycle Docker reproducibility, Joern checks/slices, KCFI, input identity, and map identity. The stock and candidate sysfs callback KCFI ID is `0xae84bcd4`. The accumulated candidate module SHA-256 is `73b92fcddb2e1f6402060465ddbfcbf075250c209a3639722a5becb89a4659de`.

This is function-scoped evidence only. The driver remains incomplete, the candidate module is not promoted, whole-driver semantic equivalence is not established, and hardware validation was not performed. See `core_v2/hard_protocol_report.json` and `core_v2/docker/driver_audit.md`.
