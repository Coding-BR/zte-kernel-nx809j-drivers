# `syna_dev_module_init` — offline-exact revalidation

This package records microtask `155` for stock entry `00111fcc`.

The candidate matches the stock AArch64 body at 15 instructions/60 bytes,
including relocations and ELF symbol size, and matches KCFI type
`0x6fbb3035`. The direct host harness covers both the failed hardware-init
path and the successful sleep/driver-registration path.

Validation gates passed:

- canonical Docker build, two cycles;
- AArch64 opcode, relocation and symbol-size comparison;
- KCFI type and surface comparison;
- ASan/UBSan host harness, two cycles and two cases;
- strict Joern function gate.

Hardware validation remains deferred. Hardware initialization, sleep and
platform-driver registration are represented by deterministic host stubs.
