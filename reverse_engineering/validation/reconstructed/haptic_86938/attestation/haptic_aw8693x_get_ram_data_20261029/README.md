# `aw8693x_get_ram_data` static reconstruction

Target: stock `aw8693x_get_ram_data@00105f98`, body size 132 bytes, KCFI type `0x0c0dba4c` at `0x3174`.

The stock body reads the 32-bit length at `haptic + 0x450`. Zero returns immediately. Otherwise it repeatedly calls `i2c_r_bytes(haptic, 0x42, buffer + (s32)offset, chunk)`, with `chunk = min(length - offset, 0x400)`. It ignores the helper return, reloads the length after every call, advances the 32-bit offset, and returns the sign-extended offset. The `(s32)` destination index is necessary: an unsigned index generated `uxtw` and failed the first assembly comparison; the corrected source generates the stock `sxtw`.

## Gate results

All eight automated core gates pass: input identity, map identity, strict Joern, Joern slice, two-cycle Docker reproducibility, exact AArch64 assembly and relocations, KCFI, and Ghidra normalized C/P-Code. Stock and candidate match all 33 instructions, 132 bytes, and the `i2c_r_bytes` call relocation. KCFI matches `0x0c0dba4c`. Two clean Docker cycles produced SHA-256 `cf2d78d1f9852e53202bf5b96e6ac5880ea25cb3c07467069618cd94f4344e94` (3,606,752 bytes).

The full haptic module remains incomplete: 61 functions have passing function-scoped core attestations, 20 candidate sources still await gates, and 79 map entries remain `NOT_STARTED`. Whole-driver symbol/alias/vermagic parity is not established. The map keeps `semantic_equivalence` as `NOT_ESTABLISHED` pending independent review. No hardware validation or module promotion is claimed; promotion is unauthorized.

The failed first attempt is retained as local diagnostic output only and is not part of the successful evidence set. The pre-candidate packet, source, plan, core report, candidate Ghidra export, and Joern source-view manifest are the versioned evidence for this result.
