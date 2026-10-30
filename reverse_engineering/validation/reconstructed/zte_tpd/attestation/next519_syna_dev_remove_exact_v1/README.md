# `syna_dev_remove` — exact offline attestation v1

Revalidation of microtask `158` at stock entry `0x001125bc`.

The C reconstruction was corrected from the preserved Ghidra/P-Code evidence: stock format strings replace placeholder globals, artificial printk arguments were removed, and the observed reference byte is kept in AArch64 `w2` (with a host-portable fallback for the offline harness).

Validated gates:

- Ghidra decompilation and P-Code preserved;
- source sync passed;
- Joern strict coverage passed for one requested function;
- canonical Docker build passed in two independent cycles with identical module SHA-256 `03fa7b7532a83b54abaf6ac3121db3d1118131dac8f33b94234f464825c0ce48` and size `25375080`;
- AArch64 comparison passed: 308/308 bytes, 77/77 instructions and equal normalized relocations;
- KCFI type ID matched: `0x24a11bb9`;
- ASan/UBSan host harness passed in two cycles with four scenarios.

Hardware behavior remains deferred. No smartphone test was performed.
