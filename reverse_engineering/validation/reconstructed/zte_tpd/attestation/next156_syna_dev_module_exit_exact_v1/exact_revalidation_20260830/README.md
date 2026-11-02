# `syna_dev_module_exit` — offline-exact revalidation

This package records microtask `156` for stock entry `0011200c`.

The candidate matches the stock AArch64 body at 10 instructions/40 bytes,
including relocations and ELF symbol size, and matches KCFI type
`0xe5c47d60`. The direct host harness verifies the required unregister-then-
hardware-exit ordering.

Validation gates passed:

- canonical Docker build, two cycles;
- AArch64 opcode, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness, two cycles and one case;
- strict Joern function gate.

Hardware validation remains deferred. Platform unregister and hardware
interface teardown are represented by deterministic host stubs.
